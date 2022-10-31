
import 'package:auto_detection/view/AutoDetectionAppBar.dart';
import 'package:flutter/material.dart';

class UserManual extends StatelessWidget{
  const UserManual({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("用户手册"),
      ),
      body: const Center(
        child: Text("用户手册"),
      ),
    );
  }

}