import 'package:auto_detection/model/CaseModel.dart';
import 'package:auto_detection/model/ErrorMessage.dart';
import 'package:auto_detection/net/Request.dart';
import 'package:auto_detection/ui/CaseDetail.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CaseFragment extends StatelessWidget {
  const CaseFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CaseFragmentPage(),
    );
  }

}
class CaseFragmentPage extends StatefulWidget {
  const CaseFragmentPage({super.key});
  @override
  State<CaseFragmentPage> createState() => _CaseFragmentPageState();
}
class _CaseFragmentPageState extends State<CaseFragmentPage> with AutomaticKeepAliveClientMixin {

  final List<CaseModel> _list = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData(){
    Request().getCaseListData(successCallback: (data){
      List<CaseModel> caseData = (data as List<dynamic>).map((e) => CaseModel.fromJson(e as Map<String,dynamic>)).toList();
      setState(() {
        _list.clear();
        _list.addAll(caseData);
      });
    }, errorCallback: (e){
        e as ErrorMessage;
        Fluttertoast.showToast(msg: e.message);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
          appBar: AppBar(
            title: const Text("案例"),
          ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListView.builder(
                shrinkWrap: true,
                itemCount: _list.length,
                itemExtent: 60,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  return itemView(index);
                }
            )
          ],
        ),
      ),
    );
  }

  Widget itemView(int index){
    return GestureDetector(
      onTapUp: (d){
        Get.to(()=>CaseDetail(caseModel: _list[index]));
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Icon(Icons.multitrack_audio_rounded,color: Colors.blue,),
                Text(_list[index].liSenCaseName ?? ""),
                const Icon(Icons.arrow_forward_ios,color: Colors.blue,)
              ],
            ),
          ),
          const Divider(height: 1,color: Colors.grey,indent: 15,endIndent: 15,)
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;



}