import 'package:auto_detection/model/ErrorMessage.dart';
import 'package:auto_detection/model/Token.dart';
import 'package:auto_detection/net/AppUrl.dart';
import 'package:auto_detection/net/NetConstant.dart';
import 'package:auto_detection/net/Result.dart';
import 'package:auto_detection/util/Global.dart';
import 'package:dio/dio.dart';

import 'DioUtil.dart';

class Request<T> {
  final CancelToken _cancelToken = CancelToken();

  Request() {
    DioUtil.getInstance()?.openLog();
  }

  void sendVerifyCode(Map<String, String> params,
      {required Function successCallback, required Function errorCallback}) async {
    Result result = await DioUtil().get(
        AppUrl.sendLoginVerifyCode, method: DioMethod.get,
        params: params,
        cancelToken: _cancelToken);
    if (result.code == NetConstant.responseSuccessCode) {
      successCallback(result.data);
    } else {
      errorCallback(result.data);
    }
  }

  void updateToken(String phone,
      {required Function successCallback, required Function errorCallback}) async {
    Result result = await DioUtil().get(
        AppUrl.getTokenByPhone, method: DioMethod.get,
        params: {"UserPhone": phone},
        cancelToken: _cancelToken);
    if (result.code == NetConstant.responseSuccessCode) {
      successCallback(result.data);
    } else {
      errorCallback(result.data);
    }
  }

  void loginByVerifyCode(Map<String, String> params,
      {required Function successCallback, required Function errorCallback}) async {
    Result result = await DioUtil().get(
        AppUrl.checkLoginVerifyCode, method: DioMethod.get,
        params: params,
        cancelToken: _cancelToken);
    if (result.code == NetConstant.responseSuccessCode) {
      successCallback(result.data);
    } else {
      errorCallback(result.data);
    }
  }

  void getDetectionPointList(
      {required Function successCallback, required Function errorCallback}) async {
    var phone = await Global().getPhone();
    if (phone.isNotEmpty) {
      Result result = await DioUtil().post(
          AppUrl.getDetectionPointList, params: {"Phone": phone});
      if (result.code == NetConstant.responseSuccessCode) {
        successCallback(result.data);
      } else {
        errorCallback(result.data);
      }
    }
  }

  void getAudioHistoryRecords(Map<String, Object> params,
      {required Function successCallback, required Function errorCallback}) async {
    var phone = await Global().getPhone();
    if (phone.isNotEmpty) {
      Result result = await DioUtil().post(
          AppUrl.soundFileByDetectionPointCode, params: params);
      if (result.code == NetConstant.responseSuccessCode) {
        successCallback(result.data);
      } else {
        errorCallback(result.data);
      }
    }
  }

  void getAudioDetail(Map<String, Object> params,
      {required Function successCallback, required Function errorCallback}) async {
    var phone = await Global().getPhone();
    if (phone.isNotEmpty) {
      Result result = await DioUtil().post(
          AppUrl.getAIAudioFileDetail, params: params);
      if (result.code == NetConstant.responseSuccessCode) {
        successCallback(result.data);
      } else {
        errorCallback(result.data);
      }
    }
  }

  void getCaseListData({required Function successCallback, required Function errorCallback}) async {
    Result result = await DioUtil().post(
        AppUrl.getAllUseCase, params: {"Modifier": "admin"});
    if (result.code == NetConstant.responseSuccessCode) {
      successCallback(result.data);
    } else {
      errorCallback(result.data);
    }
  }
  void submitFeedback(Map<String,Object> params,{required Function successCallback, required Function errorCallback}) async{
    Result result = await DioUtil().post(AppUrl.submitFeedback, params: params);
    if (result.code == NetConstant.responseNoDataCode) {
      successCallback();
    } else {
      errorCallback(result.data);
    }
  }

}
/*
  void _handleLogin() async {
    // 模拟用户退出页面
    // const _timeout = Duration(milliseconds: 2000);
    // Timer.periodic(_timeout, (timer) {
    //     DioUtil().cancelRequests(token: _cancelToken);
    // });

    // DioUtil().openLog();
    DioUtil.getInstance()?.openLog();
    // DioUtil.CACHE_ENABLE = true;
    // DioUtil().setProxy(proxyAddress: "https://www.baidu.com", enable: true);
    DioResponse result = await DioUtil().request("/login", method: DioMethod.get, params: {
      "username": "123456",
      "password": "123456"
    }, cancelToken: _cancelToken);
    print(result);
  }
 */