import 'package:auto_detection/net/Request.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Feedback extends StatelessWidget{
  const Feedback({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FeedbackPage(),
    );
  }
}
class FeedbackPage extends StatefulWidget{
  const FeedbackPage({super.key});

  @override
  State<StatefulWidget> createState() => _FeedbackPageState();

}
class _FeedbackPageState extends State<FeedbackPage> {

  TextEditingController suggestController  = TextEditingController();
  TextEditingController phoneController  = TextEditingController();
  TextEditingController nameController  = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("意见反馈"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 20, 15, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text("您的意见或建议",style: TextStyle(fontSize: 18),),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: TextField(
                  controller: suggestController,
                  maxLines: 100,
                  decoration: const InputDecoration(
                      hintText: "请输入您的意见或反馈",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1
                          )
                      )
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text("您的联系方式",style: TextStyle(fontSize: 18),),
              ),
              SizedBox(
                child: TextField(
                  controller: phoneController,
                  maxLines: 1,
                  decoration: const InputDecoration(
                      hintText: "请输入您的联系方式",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1
                          )
                      )
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text("您的姓名",style: TextStyle(fontSize: 18),),
              ),
              SizedBox(
                child: TextField(
                  controller: nameController,
                  maxLines: 1,
                  decoration: const InputDecoration(
                      hintText: "请输入您的姓名",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1
                          )
                      )
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 55,
                margin: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: (){submitFeedback();}, child: Text("提交反馈",style: TextStyle(fontSize: 16),)),
              )
            ],
          ),
        ),
      ),
    );
  }

  void submitFeedback() async{
    if (suggestController.value.text.isEmpty){
      Fluttertoast.showToast(msg: "请输入建议内容");
      return;
    }
    Request().submitFeedback(
        {
          "Content": suggestController.value.text,
          "RelationName" : nameController.value.text,
          "RelationType": phoneController.value.text
        },
        successCallback: (){
          Fluttertoast.showToast(msg: "反馈提交成功");
        },
        errorCallback: (e){
          Fluttertoast.showToast(msg: "提交失败，请稍后重试");
        });
  }


}