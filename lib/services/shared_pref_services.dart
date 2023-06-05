import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibee/services/config.dart';

class SharedPrefServices {
  static Future<void> setUserId(String userId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
    Config.userId = userId;
  }

  static Future<String?> getUserId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userId = prefs.getString('userId');
    Config.userId = userId;
    return userId;
  }

  static Future<void> removeUserId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('userId');
    Config.userId = '';
  }

  static Future<void> setTocken(String tocken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('tocken', tocken);
    Config.tocken = tocken;
  }

  static Future<String?> getTocken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tocken = prefs.getString('tocken');
    Config.tocken = tocken;
    return tocken;
  }

  static Future<void> removeTocken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('tocken');
    Config.tocken = '';
  }

  static Future<void> setPhoneNumber(String userPhoneNumber) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userPhoneNumber', userPhoneNumber);
    Config.userPhoneNumber = userPhoneNumber;
  }

  static Future<String?> getPhoneNumber() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userPhoneNumber = prefs.getString('userPhoneNumber');
    Config.userPhoneNumber = userPhoneNumber;
    return userPhoneNumber;
  }

  static Future<void> removePhoneNumber() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('userPhoneNumber');
    Config.userPhoneNumber = '';
  }

  static Future<void> removeAll() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  // static void set({required String key, required String value}) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString(key, value);
  // }

  // static Future<String?> get({required String key}) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final String? value = prefs.getString(key);
  //   return value;
  // }

  // static void remove({required String key}) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.remove(key);
  // }
}
