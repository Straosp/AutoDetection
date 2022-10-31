import 'package:auto_detection/model/CaseModel.dart';
import 'package:auto_detection/util/AudioPlayUtil.dart';
import 'package:auto_detection/util/ImageCacheUtil.dart';
import 'package:auto_detection/view/AutoDetectionAppBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CaseDetail extends StatelessWidget {
  const CaseDetail({super.key, required this.caseModel});
  final CaseModel caseModel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CaseDetailPage(caseModel: caseModel,),
    );
  }

}
class CaseDetailPage extends StatefulWidget {
  const CaseDetailPage({super.key, required this.caseModel});
  final CaseModel caseModel;


  @override
  State<CaseDetailPage> createState() => _CaseDetailPageState();
}
class _CaseDetailPageState extends State<CaseDetailPage> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoDetectionAppBar(title: "案例详情",),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: cacheImage(widget.caseModel.getDetailImage(),boxFit: BoxFit.fitWidth, width: double.infinity, height: double.infinity,alignment: Alignment.topCenter),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                height: 100,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTapUp: (d){
                        Fluttertoast.showToast(msg: "没做");
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Icon(Icons.multitrack_audio_rounded,color: Colors.blue,size: 50,),
                            Text(widget.caseModel.caseFileName1 ?? "",style: const TextStyle(fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: GestureDetector(
                        onTapUp: (d){
                          Fluttertoast.showToast(msg: "也没做");
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Icon(Icons.multitrack_audio_rounded,color: Colors.blue,size: 50,),
                            Text(widget.caseModel.caseFileName2 ?? "",style: const TextStyle(fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }





}