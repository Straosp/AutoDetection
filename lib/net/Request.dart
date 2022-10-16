import 'package:auto_detection/model/Login.dart';
import 'package:auto_detection/net/AppUrl.dart';
import 'package:auto_detection/net/dio_method.dart';
import 'package:auto_detection/net/dio_response.dart';
import 'package:dio/dio.dart';

import 'dio_util.dart';

class Request<T>{
  final CancelToken _cancelToken = CancelToken();
  Request(){
    DioUtil.getInstance()?.openLog();
  }

  Future<DioResponse<T>?> sendVerifyCode(Map<String,String> params) async {
    return await DioUtil().request(AppUrl.verifyCode,method: DioMethod.post,params: params,cancelToken: _cancelToken);
  }

  Future<DioResponse<Login>?> loginByVerifyCode(Map<String,String> params ) async {
    return await DioUtil().request(AppUrl.loginByVerifyCode,method: DioMethod.post,params: params,cancelToken: _cancelToken);
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