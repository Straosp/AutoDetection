import 'dart:io';

import 'package:auto_detection/model/Token.dart';
import 'package:auto_detection/net/Request.dart';
import 'package:auto_detection/ui/HomeMain.dart';
import 'package:auto_detection/ui/Login.dart';
import 'package:auto_detection/util/Global.dart';
import 'package:auto_detection/util/HiveUtil.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveUtil.install();
  await HiveUtil.getInstance();
  runApp(const GetMaterialApp(home: Main(),));
}


class Main extends StatelessWidget{

  const Main({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: "",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPage(),
      );
  }
}

class MainPage extends StatefulWidget{

  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPage();

}
class _MainPage extends State<MainPage> {



  @override
  void initState() {
    super.initState();
    isFirstApp();
    var util = TimerUtil(mInterval: 1000,mTotalTime: 3000);
    util.setOnTimerTickCallback((millisUntilFinished) {
      if (millisUntilFinished / 1000 == 0){
        Get.off(()=>const Login());
      }
    });
    //util.startCountDown();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text("Main Page"),
      ),
    );
  }
  void isFirstApp() async {
    var b = await  Global().getIsFirstApp();
    if (b){
      var d = await showPrivacyDialog();
      if (d == true){
        await Global().setIsFirstApp(false);
        //Navigator.push(context,MaterialPageRoute(builder: (context){return const Login();}));
        Get.off(const Login());
      }else{
        _doQuit();
      }
    }else{
      var phone = await Global().getPhone();
      if (phone.isNotEmpty){
        Request().updateToken(phone,successCallback: (data) async {
          Token token = Token.fromJson(data);
          var result = await Global().setToken(token.token);
          if (result){
            //Navigator.push(context,MaterialPageRoute(builder: (context){return const HomeMain();}));
            Get.off(()=>const HomeMain());
          }
        }, errorCallback: (error){
          //Navigator.push(context,MaterialPageRoute(builder: (context){return const Login();}));
          Get.off(()=>const Login());
        });
      }
    }
  }
  /// 退出 APP 方式一
  void _doQuit() {
      SystemNavigator.pop();
  }


  Future<bool?> showPrivacyDialog(){
    return showDialog<bool>(
      context: context,
      builder: (context){
        return AlertDialog(
          title: const Text("提示"),
          contentPadding: EdgeInsets.zero,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: const Text("用户协议"),
              ),
              const Divider(height: 1.0,indent: 30,endIndent: 30,color: Colors.grey,),
              Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.all(5),
                child: Row(
                  children: <Widget>[
                    Expanded(child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: (){
                            Navigator.of(context).pop(true);
                          },
                        child: const Text("同意"),),)),
                    Expanded(child: SizedBox(
                      height: double.infinity,
                      width: double.infinity ,
                      child: TextButton(
                        onPressed: (){
                          Navigator.of(context).pop(false);
                          },
                        child: const Text("拒绝"),),))
                  ],
                ),
              )
            ],
          )
        );
      }
    );
  }



}