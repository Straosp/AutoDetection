class NetConstant{

  //网络相关
  //请求成功，返回数据成功
  static const int responseSuccessCode = 100;
  //请求异常，不明原因
  static const int responseErrorCode = 400;
  //请求成功，但是没有得到数据
  static const int responseNoDataCode = 110;
  // 身份认证失败 201
  static const int tokenFailedCode = 201;
  //网络连接失败
  static const int networkConnectFailedCode = 401;
  //网络连接超时
  static const int timeOutExceptionCode = 402;
  //无数据附加code
  static const int notDataCode = 10;
  //网络错误Code
  static const int networkErrorCode = 20;
  //身份认证失败 code
  static const int tokenFailedAttachCode = 30;
  // 其他异常
  static const int otherErrorAttachCode = 40;

  static const int API_CONNECT_TIME_OUT = 10;
  static const int API_READ_TIME_OUT = 10;
  static const int API_WRITE_TIME_OUT = 10;

  //file 下载失败
  static const int FILE_DOWNLOAD_ERROR_CODE = 500;
  
}