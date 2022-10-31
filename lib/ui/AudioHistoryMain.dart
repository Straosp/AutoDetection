/*
 历史音频文件的主界面，
 负责承载 历史音频 和 测点配置 两个页面
 */
import 'package:auto_detection/model/DetectionPoint.dart';
import 'package:auto_detection/ui/fragment/AudioHistoryFragment.dart';
import 'package:auto_detection/ui/fragment/DetectionPointConfigFragment.dart';
import 'package:flutter/material.dart';

class AudioHistoryMain extends StatelessWidget {
  const AudioHistoryMain({super.key,required this.detectionPoint});
  final DetectionPoint detectionPoint;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AudioHistoryMainPage(detectionPoint: detectionPoint,),
    );
  }

}
class AudioHistoryMainPage extends StatefulWidget {
  const AudioHistoryMainPage({super.key, required this.detectionPoint});
  final DetectionPoint detectionPoint;
  @override
  State<AudioHistoryMainPage> createState() => _AudioHistoryMainPageState();
}
class _AudioHistoryMainPageState extends State<AudioHistoryMainPage> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: controller,
          children: <Widget>[
            AudioHistory(detectionPoint: widget.detectionPoint,parentContext: context,),
            const DetectionPointConfig(),
          ]
      ),
    );
  }

}