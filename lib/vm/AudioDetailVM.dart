import 'dart:convert';

import 'package:auto_detection/model/AudioDetailModel.dart';
import 'package:auto_detection/net/Request.dart';
import 'package:auto_detection/ui/fragment/AudioDetailFragment.dart';
import 'package:auto_detection/util/Constant.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../model/ErrorMessage.dart';

class AudioDetailVM extends GetxController {

  var audioFileId = "";
  AudioDetailModel? audioDetailModel;
  var bandThresholdValue = "".obs;
  var diagnosticValue = 0.obs;

  @override
  void onReady() {
    super.onReady();
    var map = Get.arguments;
    audioFileId = map[Constant.AUDIO_DETAIL_FILE_ID_KEY];
    print("AudioFileID =  ${audioFileId}");
    getData();
  }

  void getData() async {
     Request().getAudioDetail({"SoundFileID":audioFileId},
         successCallback: (data){
            //var jsonList = jsonDecode(data);
            audioDetailModel = AudioDetailModel.fromJson(data);
            update();
     }, errorCallback: (error){
       error as ErrorMessage;
       Fluttertoast.showToast(msg: error.message);
     });
  }


}