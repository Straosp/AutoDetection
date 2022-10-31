import 'package:auto_detection/model/ErrorMessage.dart';
import 'package:auto_detection/net/Request.dart';
import 'package:auto_detection/ui/HomeMain.dart';
import 'package:auto_detection/util/Constant.dart';
import 'package:auto_detection/util/Global.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/Token.dart';



class Login extends StatelessWidget {
  const Login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey _globalKey = GlobalKey<FormState>();
  late String _phone, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登陆",style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(padding: const EdgeInsets.all(10),margin: const EdgeInsets.fromLTRB(10, 30, 10, 30),width:double.infinity,height: 120, child: const Image(image: AssetImage("image/lisen_tran.png"))),
            Form(
              key: _globalKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(margin: const EdgeInsets.all(20) ,child: buildPhoneTextField()),
                  Container(margin: const EdgeInsets.all(20) ,child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(child: buildPasswordTextField()),
                      ElevatedButton(onPressed: sendVerifyCode, child: const Text("发送验证码")),
                    ],
                  )),
                  Container(alignment: Alignment.center,padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),child: ElevatedButton(onPressed: login,style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))), child: const Text("登陆",style: TextStyle(fontSize: 20),)),),
                  Container(
                      width: double.infinity,
                      height: 50,
                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          TextButton(onPressed: login, child: const Text("账号密码登陆")),
                          TextButton(onPressed: login, child: const Text("去注册一个账号"))
                        ],
                  )
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }



  Widget buildPhoneTextField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      autovalidateMode: AutovalidateMode.onUserInteraction,
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
      autovalidateMode: AutovalidateMode.onUserInteraction,
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
      Fluttertoast.showToast(msg: "请输入合法的手机号",toastLength: Toast.LENGTH_SHORT);
      return;
    }
    if (!Constant.isPhone(_phone)) {
      Fluttertoast.showToast(msg: "请输入合法的手机号",toastLength: Toast.LENGTH_SHORT);
      return;
    }
    Request().sendVerifyCode({"UserPhone": _phone}, successCallback: (data){
      Fluttertoast.showToast(msg: "验证码已发送",toastLength: Toast.LENGTH_SHORT);
    }, errorCallback: (error){
      error as ErrorMessage;
      Fluttertoast.showToast(msg: error.message,toastLength: Toast.LENGTH_SHORT);
    });

  }

  void login() async {
      Request().loginByVerifyCode({"UserPhone":_phone,"VCode": _password}, successCallback:(data) {
        Fluttertoast.showToast(msg: "登陆成功",toastLength: Toast.LENGTH_SHORT);
        Token login = Token.fromJson(data);
        print("login Token = ${login.token}");
        Global().setToken(login.token);
        Global().setPhone(_phone);
        Navigator.push(context, MaterialPageRoute(builder: (context) { return const HomeMain();}));
      },errorCallback:(error){
        error as ErrorMessage;
        Fluttertoast.showToast(msg: error.message,toastLength: Toast.LENGTH_SHORT);
      });

  }


}
