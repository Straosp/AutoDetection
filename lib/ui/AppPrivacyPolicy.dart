
import 'package:auto_detection/net/AppUrl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class AppPrivacyPolicy extends StatelessWidget{
  const AppPrivacyPolicy({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("隐私协议"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Expanded(
            child: WebviewScaffold(
             url: AppUrl.lisenAppPrivacy,
              withJavascript: true,
            ),
          )
        ],
      ),
    );
  }

}