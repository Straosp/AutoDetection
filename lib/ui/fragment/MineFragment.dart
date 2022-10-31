import 'package:auto_detection/net/AppUrl.dart';
import 'package:auto_detection/ui/AppPrivacyPolicy.dart';
import 'package:auto_detection/ui/Feedback.dart';
import 'package:auto_detection/ui/Login.dart';
import 'package:auto_detection/ui/UserManual.dart';
import 'package:auto_detection/util/Global.dart';
import 'package:auto_detection/view/AutoDetectionAppBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../DownloadAudioManager.dart';
import '../PreferenceSetting.dart';


class MineFragment extends StatelessWidget {
  const MineFragment({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MineFragmentPage(),
    );
  }



}
class MineFragmentPage extends StatefulWidget {
  const MineFragmentPage({super.key});
  @override
  State<MineFragmentPage> createState() => _MineFragmentPageState();
}

class _MineFragmentPageState extends State<MineFragmentPage> {

  String? phone = "";

  void initData() async {
    phone = await Global().getPhone();
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 150, 20, 20),
            padding: const EdgeInsets.all(10),
            child: Text("您好  $phone",style: const TextStyle(fontSize: 18),),
          ),
          iconAction("用户手册", (){
            Get.to(()=> const UserManual());
          }),
          iconAction("隐私政策", (){
            Get.to(()=> const AppPrivacyPolicy());
          }),
          iconAction("意见反馈", (){
            Get.to(()=>const FeedbackPage());
          }),
          iconAction("我下载的音频", (){
            Get.to(()=> const DownloadAudioManager());
          }),
          iconAction("售后服务", (){
            openService();
          }),
          iconAction("调试助手", (){}),
          iconAction("更多设置", (){
            Get.to(()=> const PreferenceSetting());
          }),
          Container(
            width: 100,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: TextButton(
              onPressed: (){
                Get.offAll(const Login());
              },
              child: const Text("退出登录"),
            ),
          )
        ],
      ),
    );
  }

  Widget iconAction(String title,Function tapCallBack){
      return GestureDetector(
        onTapUp: (d){tapCallBack();},
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child:  Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title,style: const TextStyle(fontSize: 18),),
              const Icon(Icons.arrow_forward_ios,color: Colors.blue,size: 30,)
            ],
          ),
        )
      );
  }

  Future<void> openService() async{
    await showDialog<bool>(
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
                    child: const Text("提示"),
                  ),
                  const Divider(height: 1.0,indent: 30,endIndent: 30,color: Colors.grey,),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: const Text("确定要联系官方售后人员吗？App会启动浏览器跳转到微信联系，请允许打开微信",style: TextStyle(fontSize: 16),),
                  ),
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
                            onPressed: () async {
                              Navigator.of(context).pop(true);
                              if (await canLaunchUrl(Uri.parse(AppUrl.weiXinAfterService))) {
                                  await launchUrl(Uri.parse(AppUrl.weiXinAfterService),mode: LaunchMode.externalApplication);
                              }else{
                                  Fluttertoast.showToast(msg: "打开失败");
                              }
                            },
                            child: const Text("同意"),),)),
                        Expanded(child: SizedBox(
                          height: double.infinity,
                          width: double.infinity ,
                          child: TextButton(
                            onPressed: (){
                              Navigator.of(context).pop(false);
                            },
                            child: const Text("不用了"),),))
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
