import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_detection/model/ErrorMessage.dart';

abstract class AudioCallback{
  void updatePlayState(PlayState playState);
  void playProgress(int progress);
  void onError(ErrorMessage errorMessage);
}

class AudioPlayUtil{

  PlayState _playState = PlayState.READY;
  PlayState getCurrentPlayState() => _playState;
  late String url;
  late AudioPlayer _audioPlayer;
  late Timer _timer;
  int playDuration = 0;
  int currentSecond = 0;
  int startDuration = 0;
  int endDuration = 0;
  AudioCallback? audioCallback = null;



  static final AudioPlayUtil _instance = AudioPlayUtil._internal();
  factory AudioPlayUtil(AudioCallback audioCallback) {
    audioCallback = audioCallback;
    return _instance;
  }
  AudioPlayUtil._internal(){
    _audioPlayer = AudioPlayer();
    _audioPlayer.onPlayerStateChanged.listen((event) {
      switch(event){
        case PlayerState.stopped:
          _playState = PlayState.END;
          break;
        case PlayerState.playing:
          _playState = PlayState.PLAYING;
          break;
        case PlayerState.completed:
          _playState = PlayState.END;
          break;
        case PlayerState.paused:
          _playState = PlayState.PAUSE;
          break;
      }
    });
  }


  void clipPlay(String url,int startDuration,int endDuration) async{
      this.url = url;
      if (startDuration < 0) startDuration = 0;
      var duration = await getAudioDuration();
      if (endDuration > duration.inMicroseconds){ endDuration = duration.inMicroseconds;}
      if (startDuration == endDuration){
        startDuration = 0;
        endDuration = duration.inMicroseconds;
      }
      this.startDuration = startDuration;
      this.endDuration = endDuration;
      playDuration = endDuration - startDuration;
      await _audioPlayer.setSourceUrl(url);
  }

  void startDownTime(){
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (t) {
      currentSecond += 1;
      if(currentSecond == playDuration){
        _audioPlayer.pause();
      }
    });
  }


  Future<Duration> getAudioDuration() async{
    AudioPlayer audioPlayer = AudioPlayer();
    await audioPlayer.setSourceUrl(url);
    int milliseconds = (await audioPlayer.getDuration()) as int;
    return Duration(milliseconds: milliseconds);
  }


}
enum PlayState{
  READY,PLAYING,PAUSE,END,ERROR
}