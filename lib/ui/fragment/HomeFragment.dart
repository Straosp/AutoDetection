import 'package:auto_detection/model/DetectionPoint.dart';
import 'package:auto_detection/model/ErrorMessage.dart';
import 'package:auto_detection/net/Request.dart';
import 'package:auto_detection/ui/AudioHistoryMain.dart';
import 'package:auto_detection/util/ImageCacheUtil.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment(this.parentContext,{super.key});
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeFragmentPage(parentContext: parentContext,),
    );
  }

}
class HomeFragmentPage extends StatefulWidget {
  const HomeFragmentPage({super.key,required this.parentContext});
  final BuildContext parentContext;
  @override
  State<HomeFragmentPage> createState() => _HomeFragmentPageState();
}
class _HomeFragmentPageState extends State<HomeFragmentPage> with AutomaticKeepAliveClientMixin {

  final List<DetectionPoint> _list = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    Request().getDetectionPointList(successCallback: (data){
      //var jsonList = jsonDecode(data);
      List<DetectionPoint> detections = (data as List<dynamic>).map((e) => DetectionPoint.fromJson(e as Map<String,dynamic>)).toList();
      setState(() {
        _list.clear();
        _list.addAll(detections);
      });
      //_list.clear();
      //_list.addAll(detections);
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
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text("力声听诊"),
          ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemExtent: 220,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            controller: _scrollController,
            itemCount: _list.length,
            itemBuilder: (context,index){
              return itemView(_list[index]);
            }

        ),
        ),
      ),
    );
  }

  Widget itemView(DetectionPoint detectionPoint){
    return Card(
      child: GestureDetector(
        onTapUp: (details){
          //Navigator.push(widget.parentContext, MaterialPageRoute(builder: (context){return AudioHistoryMain(detectionPoint: detectionPoint);}));
          Get.to(AudioHistoryMain(detectionPoint: detectionPoint));
        },
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(5),
          child:SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(padding: const EdgeInsets.all(10),width: 40,height: 40,child: getConnectStatusImage(detectionPoint.connectState),),
                    Expanded(child: Container(padding: const EdgeInsets.all(10),child: Text(detectionPoint.soundPointName ?? "",softWrap: false,overflow: TextOverflow.ellipsis,style: const TextStyle(fontSize: 18),),))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    cacheImage(detectionPoint.getCover(),boxFit: BoxFit.fill, width: 100, height: 150),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),child: Text(detectionPoint.soundPointCode ?? ""),),
                            Text("${detectionPoint.tempNow?.toStringAsFixed(2)}",style: const TextStyle(fontSize: 18),)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(10, 5, 20, 10),
                                  child: Text(getAIResult(
                                      detectionPoint.diagnostic,detectionPoint.modelState ?? "0"),
                                    softWrap: true,
                                    style: const TextStyle(fontSize: 12),),)),
                            Text(statusText(detectionPoint))
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text("最近一次报警时间: ${detectionPoint.lastAlarmTime}\n已经检测设备${totalAlarmTime(detectionPoint.enableTime)}天,累计报警${detectionPoint.warnCount}次",style: const TextStyle(fontSize: 10),),
                        )
                      ],
                    ))
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }


  String getAIResult(String? diagnostic,String modelState){
    if (diagnostic == null || diagnostic.isEmpty){
      switch(modelState){
        case "0": return "调试中,未使用AI";
        case "1": return "AI初始化中";
        case "2": return "AI已经投入使用,正在优化中";
        case "3": return "系统工作中,可持续优化";
        default:
           return "";
      }
    }else {
      return diagnostic;
    }
  }

  String statusText(DetectionPoint detectionPoint){
    var healthValue = ((detectionPoint.healthValue ?? 0) * (detectionPoint.healthRatio ?? 0) * (detectionPoint.pointState == "1" ? 0.8 : 1.0) * (detectionPoint.soundPointState == "0" ? 1.0 : 0.9)).toInt();
    if (healthValue <= 50){
      return "异常";
    }else if (healthValue <= 75 ){
      return "注意";
    }else if(healthValue > 76){
      return "正常";
    }else {
      return "";
    }
  }
  String totalAlarmTime(String? endTime){
    //var startDate = endTime.split("-");
    return "0";
  }
  Icon getConnectStatusImage(String? connectState){
    switch(connectState){
      case "1": return const Icon(Icons.swap_vertical_circle,color: Colors.green,);
      case "2": return const Icon(Icons.swap_vertical_circle,color: Colors.blue,);
      default:
        return const Icon(Icons.swap_vertical_circle,color: Colors.grey,);
    }

  }

  @override
  bool get wantKeepAlive => true;


}