import 'package:auto_detection/model/DownloadAudio.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveUtil {

  static HiveUtil? instance;
  static Box<DownloadAudio>? downloadAudioBox;

  static Future<void> install() async{
    var document = await getApplicationDocumentsDirectory();
    Hive.init(document.path);
  }
  static Future<HiveUtil> getInstance() async {
    if (null == instance){
      instance = HiveUtil();
      await Hive.initFlutter();
      Hive.registerAdapter(DownloadAudioAdapter());
      downloadAudioBox = await Hive.openBox('downloadAudioBox');
    }
    return instance!;
  }

}