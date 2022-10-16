import 'package:auto_detection/util/Constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Global{

  static late SharedPreferences _sharedPreferences;

  static Future init() async {
      _sharedPreferences = await SharedPreferences.getInstance();
  }

  bool isFirstApp() => _sharedPreferences.getBool(IS_FIRST_APP) ?? true;



}