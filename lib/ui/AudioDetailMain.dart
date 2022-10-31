/*
 历史音频文件的主界面，
 负责承载 历史音频 和 测点配置 两个页面
 */
import 'package:auto_detection/model/AudioHistoryRecord.dart';
import 'package:auto_detection/ui/fragment/AudioDetailFragment.dart';
import 'package:auto_detection/ui/fragment/DetectionPointConfigFragment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../vm/AudioDetailVM.dart';

class AudioDetailMain extends StatelessWidget {
  final audioDetailVM = Get.put(AudioDetailVM());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AudioDetailMainPage(),
    );
  }

}
class AudioDetailMainPage extends StatefulWidget {
  const AudioDetailMainPage({super.key});
  @override
  State<AudioDetailMainPage> createState() => _AudioDetailMainPageState();
}
class _AudioDetailMainPageState extends State<AudioDetailMainPage> with SingleTickerProviderStateMixin {
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
            AudioDetail(),
            const DetectionPointConfig(),
          ]
      ),
    );
  }

}