import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class VerifyTextButton extends StatefulWidget{

  const VerifyTextButton({super.key, required this.totalTime});
  final int totalTime;

  @override
  State<StatefulWidget> createState() => VerifyTextButtonState();

}

class VerifyTextButtonState extends State<VerifyTextButton>{

  final bool _isCanClick = true;
  late final int _totalTime = widget.totalTime;

  void click(){
    if (_isCanClick){
      Fluttertoast.showToast(msg: "点击了",toastLength: Toast.LENGTH_SHORT);
    }
  }


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: click,child: Text("1233$_totalTime",style: const TextStyle(fontSize: 20,),));
  }

}
