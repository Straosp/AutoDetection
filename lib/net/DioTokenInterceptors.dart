import 'package:auto_detection/util/Global.dart';
import 'package:dio/dio.dart';


class DioTokenInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers['Authorization'] == null) {
        var token = await Global().getToken();
        options.headers['Authorization'] = "Bearer $token";
    }
    handler.next(options);

  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {

    // 响应前需要做刷新token的操作

    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}