import 'dart:convert';

import 'package:auto_detection/model/AudioHistoryRecord.dart';
import 'package:auto_detection/model/DetectionPoint.dart';
import 'package:auto_detection/model/ErrorMessage.dart';
import 'package:auto_detection/net/Request.dart';
import 'package:auto_detection/ui/AudioDetailMain.dart';
import 'package:auto_detection/util/Constant.dart';
import 'package:auto_detection/view/AutoDetectionAppBar.dart';
import 'package:auto_detection/vm/AudioDetailVM.dart';
import 'package:charcode/html_entity.dart' as HtmlEntity;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class AudioHistory extends StatelessWidget {
  const AudioHistory({super.key, required this.detectionPoint, required this.parentContext});
  final DetectionPoint detectionPoint;
  final BuildContext parentContext;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AudioHistoryPage(detectionPoint: detectionPoint,parentContext: parentContext,),
    );
  }

}
class AudioHistoryPage extends StatefulWidget {
  const AudioHistoryPage({super.key, required this.detectionPoint, required this.parentContext});
  final DetectionPoint detectionPoint;
  final BuildContext parentContext;
  @override
  State<AudioHistoryPage> createState() => _AudioHistoryPageState();
}
class _AudioHistoryPageState extends State<AudioHistoryPage> with AutomaticKeepAliveClientMixin {

  final List<AudioHistoryRecord> _list = [];
  final ScrollController _scrollController = ScrollController();
  int startIndex = 0;
  bool isLoadMore = false;

  @override
  void initState() {
    super.initState();
    getData();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels > _scrollController.position.maxScrollExtent - 200){
        print("触发上拉加载");
        isLoadMore = true;
        startIndex = _list.length;
        getData();
      }
    });
  }

  void getData() async {
    // val map = mapOf("SoundPointCode" to detectionCode.value,"StartIndex" to startIndex,"Count" to 30, "RecordTime" to recordTime, "ModelNo" to modeNo)
    var today = DateTime.now();
    Request().getAudioHistoryRecords({
      "SoundPointCode": widget.detectionPoint.soundPointCode ?? "",
      "StartIndex":startIndex,
      "Count": 30,
      "RecordTime":"${today.year.toString()}-${today.month.toString().padLeft(2,'0')}-${today.day.toString().padLeft(2,'0')} ${today.hour}:${today.minute}:${today.second}",
      "ModelNo":widget.detectionPoint.modelNo ?? 0
    },successCallback: (data){
      //var jsonList = jsonDecode(data);
      List<AudioHistoryRecord> detections = (data as List<dynamic>).map((e) => AudioHistoryRecord.fromJson(e as Map<String,dynamic>)).toList();
      setState(() {
        if (!isLoadMore){
          _list.clear();
        }
        _list.addAll(detections);
        isLoadMore = false;
      });
    }, errorCallback: (error){
      error as ErrorMessage;
      Fluttertoast.showToast(msg: error.message);
    });
  }

  // 下拉刷新
  Future<void> _onRefresh() async{
    print("下拉刷新");
    // 持续两秒
    await Future.delayed(const Duration(milliseconds:2000),(){
      getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const AutoDetectionAppBar(title: "音频历史"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  childAspectRatio: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  children: topAction(),
                ),
              ),
              RefreshIndicator(
                onRefresh: _onRefresh,
                child: ListView.builder(
                    itemExtent: 75,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    controller: _scrollController,
                    itemCount: _list.length,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTapUp: (d){
                          //Navigator.push(widget.parentContext, MaterialPageRoute(builder: (context){return AudioDetailMain(audioHistoryRecord:_list[index]);}));
                          Get.to(()=> AudioDetailMain(),arguments: {Constant.AUDIO_DETAIL_FILE_ID_KEY : (_list[index]).soundFileID});
                        },
                        child: itemBuilderView(index),
                      );
                    }
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const CircularProgressIndicator(),
                    Container(margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),child: const Text("加载中，请稍后"),)
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  List<String> titles = ["声音趋势","在线侦听","温度曲线","红外视频","模型训练","声纹数据"];
  List<Widget> topAction(){
    List<Widget> list = [];
    for (int i = 0;i < 6;i++){
      list.add(
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(titles[i]),
              const Icon(Icons.arrow_forward_ios,color: Colors.blue,)
            ],
          ),
        )
      );
    }
    return list;
  }

  Widget itemBuilderView(int index){
    return Card(
      elevation: 5,
      child: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
        ),
        margin: EdgeInsets.zero,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              getConnectStatusImage(_list[index].modResultState),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(_list[index].recordTime ?? "",style: const TextStyle(fontSize: 16),),
                  Text(_list[index].soundFileName ?? "",style: const TextStyle(fontSize: 10),),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                alignment: Alignment.center,
                child: Text("${(_list[index].tempMax ?? 0).ceil()}${String.fromCharCode(HtmlEntity.$deg)}C",style: const TextStyle(fontSize: 20),),
              ),
              showEndStatusAndTips(_list[index])
            ],
          ),
        ),
      ),
    );
  }

  Icon getConnectStatusImage(String? connectState){
    switch(connectState){
      case "1": return const Icon(Icons.swap_vertical_circle,color: Colors.green,);
      case "2": return const Icon(Icons.swap_vertical_circle,color: Colors.blue,);
      default:
        return const Icon(Icons.swap_vertical_circle,color: Colors.grey,);
    }
  }

  Widget showEndStatusAndTips(AudioHistoryRecord audioHistoryRecord){
    Widget widget = Container();
    if (audioHistoryRecord.reMark == null || (audioHistoryRecord.reMark ?? "").isEmpty){
      widget = Container(
        alignment: Alignment.bottomCenter,
        child: Text(getTextState(audioHistoryRecord))
      );
    }else {
      widget = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const Icon(Icons.bookmark,color: Colors.blue,),
          Text(getTextState(audioHistoryRecord))
        ],
      );
    }
    return widget;
  }

  String getTextState(AudioHistoryRecord audioHistoryRecord){
    var statusList = [
      audioHistoryRecord.soundFileState ?? "",
      audioHistoryRecord.lowState ?? "",
      audioHistoryRecord.middleState ?? "",
      audioHistoryRecord.highState ?? "",
    ];
    switch(audioHistoryRecord.modResultState ?? "2"){
      case "0":
      case "1":
        return "停机";
      case "2":
          if (statusList.contains("0")){
            return "正常";
          }
          if (statusList.contains("1")){
            return "一般";
          }
          if (statusList.contains("2")){
            return "注意";
          }
          if (statusList.contains("3")){
            return "异常";
          }
          return "";
      case "3":
        return "检修";
      default:
        return "其他";
    }
  }


  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;



}