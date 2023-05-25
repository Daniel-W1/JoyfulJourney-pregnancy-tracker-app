import 'dart:convert';
import 'package:frontend/infrastructure/profile/profile_dto.dart';
import 'package:frontend/infrastructure/profile/profile_form_dto.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';

class ProfileAPI {
  JJHttpClient jjHttpClient = JJHttpClient();

  Future<ProfileDto> createProfile(ProfileFormDto profileFormDto) async {
    var profile = await jjHttpClient.post("profile",
        body: json.encode(profileFormDto.toJson()));

    if (profile.statusCode == 201) {
      return ProfileDto.fromJson(jsonDecode(profile.body));
    } else {
      throw JJHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }

  Future<ProfileDto> updateProfile(ProfileFormDto profileFormDto) async {
    var profile = await jjHttpClient.put("profile",
        body: json.encode(profileFormDto.toJson()));

    if (profile.statusCode == 201) {
      return ProfileDto.fromJson(jsonDecode(profile.body));
    } else {
      throw JJHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }

  Future<void> deleteProfile() async {
    var response = await jjHttpClient.delete("profile");

    if (response.statusCode != 204) {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<ProfileDto>> getProfiles() async {
    var profile = await jjHttpClient.get("profile");

    if (profile.statusCode == 201) {
      return (jsonDecode(profile.body) as List)
          .map((e) => ProfileDto.fromJson(e))
          .toList();
    } else {
      throw JJHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }

  Future<ProfileDto> getOneProfile(String id) async {
    var profile = await jjHttpClient.get("profile/$id");

    if (profile.statusCode == 201 && profile.body != null) {
      return ProfileDto.fromJson(jsonDecode(profile.body));
    } else if (profile.body == null) {
      throw JJHttpException("Profile not found", profile.statusCode);
    } else {
      throw JJHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }

  Future<ProfileDto> getProfileByUsername(String userName) async {
    var profile = await jjHttpClient.get("profile/user/$userName");

    if (profile.statusCode == 201 && profile.body != null) {
      return ProfileDto.fromJson(jsonDecode(profile.body));
    } else if (profile.body == null) {
      throw JJHttpException("Profile not found", profile.statusCode);
    } else {
      throw JJHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }
}
