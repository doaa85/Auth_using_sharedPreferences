import 'package:shared_preferences/shared_preferences.dart';

//singleton
class PreferencesService {
  static SharedPreferences? prefs;
  static const _keyEmail = 'email';
  static const _keypassword = 'password';
  String? password;

  static Future init() async => prefs = await SharedPreferences.getInstance();
  static Future setEmail(String email) async =>
      await prefs?.setString(_keyEmail, email);
  static String? getEmail() => prefs?.getString(_keyEmail);
  static Future setPassword(String password) async =>
      await prefs?.setString(_keypassword, password);
  static String? getPassword() => prefs?.getString(_keypassword);
}
