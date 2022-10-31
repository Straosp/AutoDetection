class Token {

  Token({required this.token,});
  String token = "";

  Token.fromJson(dynamic json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }

}