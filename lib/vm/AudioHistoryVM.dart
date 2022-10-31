
import 'package:auto_detection/model/DetectionPoint.dart';
import 'package:auto_detection/util/Constant.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../model/AudioHistoryRecord.dart';
import '../model/ErrorMessage.dart';
import '../net/Request.dart';

class AudioHistoryVM extends GetxController {

  final List<AudioHistoryRecord> _list = [].obs as List<AudioHistoryRecord>;
  int startIndex = 0;
  bool isLoadMore = false;
  DetectionPoint? detectionPoint;

  @override
  void onReady() {
    super.onReady();
    var map = Get.arguments;
    detectionPoint = map[Constant.DETECTION_POINT_KEY];
    getData();
  }

  void getData() async {
    // val map = mapOf("SoundPointCode" to detectionCode.value,"StartIndex" to startIndex,"Count" to 30, "RecordTime" to recordTime, "ModelNo" to modeNo)
    var today = DateTime.now();
    Request().getAudioHistoryRecords({
      "SoundPointCode": detectionPoint?.soundPointCode ?? "",
      "StartIndex":startIndex,
      "Count": 30,
      "RecordTime":"${today.year.toString()}-${today.month.toString().padLeft(2,'0')}-${today.day.toString().padLeft(2,'0')} ${today.hour}:${today.minute}:${today.second}",
      "ModelNo":detectionPoint?.modelNo ?? 0
    },successCallback: (data){
      //var jsonList = jsonDecode(data);
      List<AudioHistoryRecord> detections = (data as List<dynamic>).map((e) => AudioHistoryRecord.fromJson(e as Map<String,dynamic>)).toList();
      if (!isLoadMore){
        _list.clear();
      }
      _list.addAll(detections);
      isLoadMore = false;
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


}