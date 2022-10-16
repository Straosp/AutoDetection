import 'package:auto_detection/net/AppUrl.dart';
import 'package:auto_detection/net/Request.dart';
import 'package:auto_detection/net/dio_response.dart';
import 'package:auto_detection/net/dio_util.dart';
import 'package:auto_detection/util/Constant.dart';
import 'package:auto_detection/view/VerifyTextButton.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'net/dio_method.dart';


void main() {
  //Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey _globalKey = GlobalKey<FormState>();
  late String _phone, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登陆",style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: _globalKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(padding: const EdgeInsets.all(10),margin: const EdgeInsets.fromLTRB(10, 30, 10, 30), child: const Image(image: AssetImage("image/lisen_tran.png"))),
              Container(margin: const EdgeInsets.all(20) ,child: buildPhoneTextField()),
              Container(margin: const EdgeInsets.all(20) ,child: buildPasswordTextField()),
              TextButton(onPressed: sendVerifyCode, child: const Text("发送验证码")),
              Container(alignment: Alignment.center,child: ElevatedButton(onPressed: login, child: const Text("登陆",style: TextStyle(fontSize: 20),)),)
            ],
          ),
        )
      )
    );
  }



  Widget buildPhoneTextField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(labelText: '请输入手机号',icon: Icon(Icons.phone_android_sharp)),
      validator: (v) {
        if (!Constant.isPhone(v!)) {
          return '请输入正确的手机号';
        }
      },
      onChanged: (v) => _phone = v!,
    );
  }
  Widget buildPasswordTextField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(labelText: '请输入验证码',icon: Icon(Icons.password_sharp)),
      validator: (v) {
        if (v == null || v.isEmpty || v.length != 6) {
          return '请输入正确的验证码';
        }
      },
      onChanged: (v) => _password = v,
    );
  }

  void sendVerifyCode() async {
    if (_phone.isEmpty){
      Fluttertoast.showToast(msg: "点击了",toastLength: Toast.LENGTH_SHORT);
      return;
    }
    print("开始发送请求");
    CancelToken _cancelToken = CancelToken();
    //DioResponse dioResponse = Request().sendVerifyCode({ "UserPhone" : _phone }) as DioResponse;
    DioResponse dioResponse = await DioUtil().request(AppUrl.verifyCode,params: {"UserPhone": _phone},method: DioMethod.post,cancelToken: _cancelToken);
    print(dioResponse);
  }

  void login(){

  }


}
