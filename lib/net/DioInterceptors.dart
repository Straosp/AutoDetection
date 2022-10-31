import 'dart:convert';

import 'package:auto_detection/net/ApiErrorMessage.dart';
import 'package:auto_detection/net/NetConstant.dart';
import 'package:auto_detection/net/Result.dart';
import 'package:dio/dio.dart';

class DioInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
    // super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    // 请求成功是对数据做基本处理
    var path = response.requestOptions.path;
    print("path =  $path   data = ${response.data}");
    if (response.statusCode == 200) {
      Map<String,dynamic> map = jsonDecode(response.data);
      var result = Result.fromMap(map);
      if (result.code == NetConstant.responseSuccessCode){
        var apiError = ApiErrorMessage().getApiErrorCode(NetConstant.notDataCode, path, result.message);
        if (result.data == null){
          response.data = Result(message: result.message, code: NetConstant.responseNoDataCode, result: path,data: apiError);
        }else{
          response.data = Result(message: result.message, code: result.code, result: path,data: result.data);
        }
      } else if (result.code == NetConstant.tokenFailedCode) {
        var apiError = ApiErrorMessage().getApiErrorCode(NetConstant.tokenFailedAttachCode, path, result.message);
        response.data = Result(message: result.message, code: NetConstant.tokenFailedCode, result: path,data: apiError);
      } else {
        var apiError = ApiErrorMessage().getApiErrorCode(NetConstant.otherErrorAttachCode, path, result.message);
        response.data = Result(message: result.message, code: NetConstant.responseErrorCode, result: path,data: apiError);
      }
    }else {
      var apiError = ApiErrorMessage().getApiErrorCode(NetConstant.networkErrorCode, path, null);
      response.data = Result(message: apiError.message, code: apiError.code, result: path,data: apiError);
    }
    // 重点
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch(err.type) {
      // 连接服务器超时
      case DioErrorType.connectTimeout:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
      // 响应超时
      case DioErrorType.receiveTimeout:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
      // 发送超时
      case DioErrorType.sendTimeout:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
      // 请求取消
      case DioErrorType.cancel:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
      // 404/503错误
      case DioErrorType.response:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
      // other 其他错误类型
      case DioErrorType.other:
        {

        }
        break;

    }
    super.onError(err, handler);
  }
}