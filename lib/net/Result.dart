class ResultCallback{


}
class Result<T>{
  Result({required this.message,required this.code, required this.result, this.data,});

  Result.fromJson(dynamic json) {
    message = json['Message'];
    code = json['Code'];
    result = json['Result'];
    data = json['Data'];
  }
  Result.fromMap(Map<String,dynamic> map) {
    message = map['Message'];
    code = map['Code'];
    result = map['Result'];
    data = map['Data'];
  }

  String message = "";
  int code = 0;
  String result = "";
  T? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Message'] = message;
    map['Code'] = code;
    map['Result'] = result;
    map['Data'] = data as T;
    return map;
  }
  @override
  String toString() {
    StringBuffer stringBuffer = StringBuffer();
    stringBuffer.write("code = $code");
    stringBuffer.write("\tmessage = $message");
    stringBuffer.write("\tresult = $result");
    stringBuffer.write("\tdata = ${data.toString()}");
    return stringBuffer.toString();
  }

}