
import 'package:flutter/material.dart';

import '../view/AutoDetectionAppBar.dart';

class PreferenceSetting extends StatelessWidget{
  const PreferenceSetting({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PreferenceSettingPage(),
    );
  }

}
class PreferenceSettingPage extends StatefulWidget{
  const PreferenceSettingPage({super.key});


  @override
  State<StatefulWidget> createState() => _PreferenceSettingPageState();
}

class _PreferenceSettingPageState extends State<PreferenceSettingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoDetectionAppBar(title: "更多设置"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("字体大小")
          ],
        ),
      ),
    );
  }

}