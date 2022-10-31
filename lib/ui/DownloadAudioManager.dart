import 'package:auto_detection/util/HiveUtil.dart';
import 'package:auto_detection/view/AutoDetectionAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/DownloadAudio.dart';

class DownloadAudioManager extends StatelessWidget{
  const DownloadAudioManager({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DownloadAudioManagerPage(),
    );
  }
}
class DownloadAudioManagerPage extends StatefulWidget{
  const DownloadAudioManagerPage({super.key});


  @override
  State<StatefulWidget> createState() => _DownloadAudioManagerPageState();

}
class _DownloadAudioManagerPageState extends State<DownloadAudioManagerPage> with SingleTickerProviderStateMixin{

  final List<DownloadAudio>? _list = HiveUtil.downloadAudioBox?.values.toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoDetectionAppBar(title: "我下载的音频"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nullDataView()
        ],
      ),
    );
  }

  Widget nullDataView(){
    if (_list != null ||  _list?.isNotEmpty == true){
      return SingleChildScrollView(
        child: ListView.builder(
            itemExtent: 80,
            shrinkWrap: true,
            itemCount: _list?.length,
            itemBuilder: (context,index){
              return itemView(index);
            }
        ),
      );
    }else{
      return const Center(
        child: Text("暂无下载的音频，请先下载",style: TextStyle(fontSize: 18),),
      );
    }
  }

  Widget itemView(int index){
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 80,
        margin: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Icon(Icons.multitrack_audio_rounded,color: Colors.blue,),
            Column(
              children: <Widget>[
                Text(_list?[index].fileName ?? ""),
                Text(_list?[index].recordTime ?? "")
              ],
            )
          ],
        ),
      ),
    );
  }

}