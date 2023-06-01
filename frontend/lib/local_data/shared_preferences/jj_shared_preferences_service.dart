import 'dart:convert';
import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/infrastructure/auth/user_dto.dart';
import 'package:frontend/infrastructure/auth/user_mapper.dart';
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

  Future<UserDomain?> getAuthenticatedUser() async {
    return SharedPreferences.getInstance().then((prefs) {
      var user = prefs.getString('user');
      if (user == null) {
        return null;
      }
      return UserDto.fromJson(json.decode(user)).toUserDomain();
    });
  }

  Future<void> setAuthenticatedUser(UserDomain user) async {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.setString('user', json.encode(user.toDto().toJson()));
    });
  }

  Future<void> removeAuthenticatedUser() {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.remove('user');
    });
  }

  Future<void> setProfileId(String profileId) async {
    return SharedPreferences.getInstance()
        .then((value) => value.setString('profileId', profileId));
  }

  Future<String?> getProfileId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('profileId');
  }

  Future<void> removeProfileId() async {
    return await SharedPreferences.getInstance()
        .then((value) => value.remove('profileId'));
  }

  // we are about to do the above for role
}