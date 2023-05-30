import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  Future<void> setAccessToken(String token) async {
    return SharedPreferences.getInstance()
        .then((value) => value.setString('access_token', token));
  }

  Future<String?> getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('access_token');
  }

  Future<void> removeAccessToken() async {
    return await SharedPreferences.getInstance()
        .then((value) => value.remove('access_token'));
  }

  // Future<bool> isFirstRun() async {
  //   return SharedPreferences.getInstance().then((prefs) {
  //     return prefs.getBool('firstRun') ?? true;
  //   });
  // }

  // Future<void> setFirstRun(bool isFirstRun) async {
  //   return SharedPreferences.getInstance().then((prefs) {
  //     prefs.setBool('firstRun', isFirstRun);
  //   });
  // }

  // Future<User?> getAuthenticatedUser() async {
  //   return SharedPreferences.getInstance().then((prefs) {
  //     var user = prefs.getString('user');
  //     if (user == null) {
  //       return null;
  //     }
  //     return UserDTO.fromJson(json.decode(user)).toModel();
  //   });
  // }

  // Future<void> setAuthenticatedUser(User user) async {
  //   return SharedPreferences.getInstance().then((prefs) {
  //     prefs.setString('user', json.encode(user.toDTO().toJson()));
  //   });
  // }

  // Future<void> removeAuthenticatedUser() {
  //   return SharedPreferences.getInstance().then((prefs) {
  //     prefs.remove('user');
  //   });
  // }
}