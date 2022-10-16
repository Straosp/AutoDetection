import 'package:auto_detection/util/Global.dart';
import 'package:flutter/material.dart';

import '../view/PrivacyView.dart';


class Splash extends StatelessWidget{

  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: "",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashPage(),
      );
  }
}

class SplashPage extends StatefulWidget{

  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPage();

}
class _SplashPage extends State<SplashPage> {

  //bool isFirstApp =  Global().isFirstApp();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登陆"),
      ),
      body: const Center(

      ),
    );
  }




  // Future<bool?> showPrivacyDialog(){
  //   return showDialog<bool>(
  //     context: context,
  //     builder: (context){
  //       return AlertDialog(
  //         title: const Text("提示"),
  //         content: Center(
  //           child: Material(
  //             child: SizedBox(
  //               height: MediaQuery.of(context).size.height * .6,
  //               width: MediaQuery.of(context).size.width * .8,
  //               child: Column(
  //                 children: [
  //                   Container(
  //                     height: 45,
  //                     alignment: Alignment.center,
  //                     child: const Text(
  //                       '用户隐私政策概要',
  //                       style: TextStyle(
  //                           fontSize: 16, fontWeight: FontWeight.bold),
  //                     ),
  //                   ),
  //                   const Divider(
  //                     height: 1,
  //                   ),
  //                   Expanded(
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: SingleChildScrollView(
  //                           child: PrivacyView(
  //                             data: "隐私政策内容",
  //                             keys: const ['《用户协议》', '《隐私政策》'],
  //                             keyStyle: const TextStyle(color: Colors.red),
  //                             onTapCallback: (String key) {
  //                               if (key == '《用户协议》') {
  //                                 // 跳转到用户协议页面
  //                               } else if (key == '《隐私政策》') {
  //                                 // 跳转到隐私政策页面
  //                               }
  //                             },
  //                           ),
  //                         ),
  //                       )),
  //                   const Divider(
  //                     height: 1,
  //                   ),
  //                   SizedBox(
  //                     height: 45,
  //                     child: Row(
  //                       children: [
  //                         Expanded(
  //                             child: GestureDetector(
  //                               child: Container(
  //                                   alignment: Alignment.center,
  //                                   child: Text('不同意')),
  //                               onTap: () {},
  //                             )),
  //                         const VerticalDivider(
  //                           width: 1,
  //                         ),
  //                         Expanded(
  //                             child: GestureDetector(
  //                               child: Container(
  //                                   alignment: Alignment.center,
  //                                   color: Theme.of(context).primaryColor,
  //                                   child: Text('同意')),
  //                               onTap: () {},
  //                             )),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  //     }
  //   );
  // }



}