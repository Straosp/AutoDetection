import 'dart:convert';

import 'package:auto_detection/model/DetectionPoint.dart';
import 'package:auto_detection/model/ErrorMessage.dart';
import 'package:auto_detection/net/Request.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetectionPointConfig extends StatelessWidget {
  const DetectionPointConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetectionPointConfigPage(),
    );
  }

}
class DetectionPointConfigPage extends StatefulWidget {
  const DetectionPointConfigPage({super.key});
  @override
  State<DetectionPointConfigPage> createState() => _DetectionPointConfigPageState();
}
class _DetectionPointConfigPageState extends State<DetectionPointConfigPage> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("力声听诊"),
      ),
    );
  }



}