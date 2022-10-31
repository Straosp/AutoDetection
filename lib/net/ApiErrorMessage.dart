import 'dart:collection';

import 'package:auto_detection/model/ErrorMessage.dart';
import 'package:auto_detection/net/AppUrl.dart';

class ApiErrorMessage{

  int _API_CODE_PREFIX = 100;

  HashMap<String,int> hashMap  = HashMap();
  ApiErrorMessage(){
    hashMap.clear();
    hashMap[AppUrl.loginByPassword] =  1 * _API_CODE_PREFIX;
    hashMap[AppUrl.sendLoginVerifyCode] =  2 * _API_CODE_PREFIX;
    hashMap[AppUrl.checkLoginVerifyCode] = 3 * _API_CODE_PREFIX;
    hashMap[AppUrl.getTokenByPhone] = 4 * _API_CODE_PREFIX;
    hashMap[AppUrl.getRegisterNotDevCode] = 5 * _API_CODE_PREFIX;
    hashMap[AppUrl.registerUserNotDev] = 6 * _API_CODE_PREFIX;
    hashMap[AppUrl.sendRegisterVerifyCode] = 7 * _API_CODE_PREFIX;
    hashMap[AppUrl.isDebugUser] = 8 * _API_CODE_PREFIX;
    hashMap[AppUrl.getUserLevel] = 9 * _API_CODE_PREFIX;
    hashMap[AppUrl.registerUserAccount] = 10 * _API_CODE_PREFIX;
    hashMap[AppUrl.cancelAccountVerifyCode] = 11 * _API_CODE_PREFIX;
    hashMap[AppUrl.cancelAccount] = 12 * _API_CODE_PREFIX;
    hashMap[AppUrl.getSignDaysAndScore] = 13 * _API_CODE_PREFIX;
    hashMap[AppUrl.submitSignInDay] = 14 * _API_CODE_PREFIX;
    hashMap[AppUrl.getSignInHistoryByMonth] = 15 * _API_CODE_PREFIX;
    hashMap[AppUrl.getDetectionPointList] = 16 * _API_CODE_PREFIX;
    hashMap[AppUrl.removeDetectionAlarmData] = 17 * _API_CODE_PREFIX;
    hashMap[AppUrl.geDetectionPointData] = 18 * _API_CODE_PREFIX;
    hashMap[AppUrl.debugDetectionPointStatus] = 19 * _API_CODE_PREFIX;
    hashMap[AppUrl.collectModelParamData] = 20 * _API_CODE_PREFIX;
    hashMap[AppUrl.submitDetectionConfigurationData] = 21 * _API_CODE_PREFIX;
    hashMap[AppUrl.uploadDetectionPointImage] = 22 * _API_CODE_PREFIX;
    hashMap[AppUrl.uploadDetectionPointIcon] = 23 * _API_CODE_PREFIX;
    hashMap[AppUrl.soundFileByDetectionPointCode] = 24 * _API_CODE_PREFIX;
    hashMap[AppUrl.getHistoryAiAudioFileByTime] = 26 * _API_CODE_PREFIX;
    hashMap[AppUrl.getAIAudioThresholdValue] = 28 * _API_CODE_PREFIX;
    hashMap[AppUrl.getAIAudioThresholdValueByRate] = 29 * _API_CODE_PREFIX;
    hashMap[AppUrl.addCollectionAudioFile] = 30 * _API_CODE_PREFIX;
    hashMap[AppUrl.removeCollectionAudioFile] = 31 * _API_CODE_PREFIX;
    hashMap[AppUrl.addTipsOnAIAudioFile] = 32 * _API_CODE_PREFIX;
    hashMap[AppUrl.getAIAudioFileDetail] = 33 * _API_CODE_PREFIX;
    hashMap[AppUrl.getHistoryAlarmRecord] = 34 * _API_CODE_PREFIX;
    hashMap[AppUrl.sendAlarmSMS] = 35 * _API_CODE_PREFIX;
    hashMap[AppUrl.submitDiagnosticOpinion] = 36 * _API_CODE_PREFIX;
    hashMap[AppUrl.getDetectionPointParamsThreshold] = 37 * _API_CODE_PREFIX;
    hashMap[AppUrl.updateDetectionPointThresholdValue] = 38 * _API_CODE_PREFIX;
    hashMap[AppUrl.getDetectionPointCollectData] = 39 * _API_CODE_PREFIX;
    hashMap[AppUrl.submitFlowPointData] = 40 * _API_CODE_PREFIX;
    hashMap[AppUrl.updateDetectionPointArea] = 41 * _API_CODE_PREFIX;
    hashMap[AppUrl.insertAreaData] = 42 * _API_CODE_PREFIX;
    hashMap[AppUrl.getAreaIDByDetectionPointID] = 43 * _API_CODE_PREFIX;
    hashMap[AppUrl.getNormalAudioFileByCode] = 44 * _API_CODE_PREFIX;
    hashMap[AppUrl.removeBackgroundAudioFile] = 45 * _API_CODE_PREFIX;
    hashMap[AppUrl.setStandardCurrentAudioFile] = 46 * _API_CODE_PREFIX;
    hashMap[AppUrl.setBackgroundAudioFile] = 47 * _API_CODE_PREFIX;
    hashMap[AppUrl.getIotNetworkCardData] = 48 * _API_CODE_PREFIX;
    hashMap[AppUrl.bindIOTCard] = 49 * _API_CODE_PREFIX;
    hashMap[AppUrl.getDetectionPointModelData] = 50 * _API_CODE_PREFIX;
    hashMap[AppUrl.submitModelCalculation] = 51 * _API_CODE_PREFIX;
    hashMap[AppUrl.getModelCalculationData] = 52 * _API_CODE_PREFIX;
    hashMap[AppUrl.enableModelOnDetectionPoint] = 53 * _API_CODE_PREFIX;
    hashMap[AppUrl.addModelOnDetectionPoint] = 54 * _API_CODE_PREFIX;
    hashMap[AppUrl.updateDetectionModelData] = 55 * _API_CODE_PREFIX;
    hashMap[AppUrl.getHistoryUsedModel] = 56 * _API_CODE_PREFIX;
    hashMap[AppUrl.resetModelData] = 57 * _API_CODE_PREFIX;
    hashMap[AppUrl.getAudioCollectModulesData] = 58 * _API_CODE_PREFIX;
    hashMap[AppUrl.getCameraData] = 59 * _API_CODE_PREFIX;
    hashMap[AppUrl.bindCameraOnDetectionPoint] = 60 * _API_CODE_PREFIX;
    hashMap[AppUrl.getDetectionPointEntrustTaskList] = 61 * _API_CODE_PREFIX;
    hashMap[AppUrl.submitEntrustTask] = 62 * _API_CODE_PREFIX;
    hashMap[AppUrl.getVoicePrintSampleByDetectionCode] = 63 * _API_CODE_PREFIX;
    hashMap[AppUrl.getVoicePrintSampleDataByDetectionCode] = 64 * _API_CODE_PREFIX;
    hashMap[AppUrl.getVoicePrintSampleConfig] = 65 * _API_CODE_PREFIX;
    hashMap[AppUrl.saveVoicePrintConfig] = 66 * _API_CODE_PREFIX;
    hashMap[AppUrl.updateVoicePrintSampleTypeName] = 67 * _API_CODE_PREFIX;
    hashMap[AppUrl.getAudioAllVoicePrintSampleData] = 68 * _API_CODE_PREFIX;
    hashMap[AppUrl.getVoicePrintClipAudioDataBySampleType] = 69 * _API_CODE_PREFIX;
    hashMap[AppUrl.voicePrintTypeMerge] = 70 * _API_CODE_PREFIX;
    hashMap[AppUrl.sampleDataChangeType] = 71 * _API_CODE_PREFIX;
    hashMap[AppUrl.getSampleTypeFileList] = 72 * _API_CODE_PREFIX;
    hashMap[AppUrl.getSampleTaskData] = 73 * _API_CODE_PREFIX;
    hashMap[AppUrl.setVoicePrintAudioClip] = 74 * _API_CODE_PREFIX;
    hashMap[AppUrl.deleteOneSamplePart] = 75 * _API_CODE_PREFIX;
    hashMap[AppUrl.detectionAttachFileList] = 76 * _API_CODE_PREFIX;
    hashMap[AppUrl.uploadDetectionAttachFile] = 77 * _API_CODE_PREFIX;
    hashMap[AppUrl.samplePrintSimilarityData] = 78 * _API_CODE_PREFIX;
    hashMap[AppUrl.detectionTrendChartImage] = 79 * _API_CODE_PREFIX;
  }
  int getApiCode(String api) => (hashMap[api] ?? 100) ~/ 100;
  ErrorMessage getApiErrorCode(int code,String apiPath,String? message) => ErrorMessage((hashMap[apiPath] ?? 100) + code, message ?? "网络连接失败，请连接网络后重试");

}