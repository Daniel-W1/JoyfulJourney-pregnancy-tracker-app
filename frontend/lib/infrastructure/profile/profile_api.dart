import 'dart:convert';

import 'package:flutter/material.dart';

import '../../util/custom_http_exception.dart';
import '../../util/joyful_http_client.dart';
import 'profile_dto.dart';
import 'profile_form_dto.dart';

class ProfileAPI {
  JoyfulHttpClient _customHttpClient = JoyfulHttpClient();

  Future<ProfileDto> createProfile(ProfileFormDto profileFormDto) async {
    var profile = await _customHttpClient.post("profile",
        body: json.encode(profileFormDto.toJson()));

    if (profile.statusCode == 201) {
      return ProfileDto.fromJson(jsonDecode(profile.body));
    } else {
      throw CustomHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }

  Future<ProfileDto> updateProfile(ProfileFormDto profileFormDto) async {
    var profile = await _customHttpClient.put("profile",
        body: json.encode(profileFormDto.toJson()));

    if (profile.statusCode == 201) {
      return ProfileDto.fromJson(jsonDecode(profile.body));
    } else {
      throw CustomHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }

  Future<void> deleteProfile() async {
    var response = await _customHttpClient.delete("profile");

    if (response.statusCode != 204) {
      throw CustomHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<ProfileDto>> getProfiles() async {
    var profile = await _customHttpClient.get("profile");

    if (profile.statusCode == 201) {
      return (jsonDecode(profile.body) as List)
          .map((e) => ProfileDto.fromJson(e))
          .toList();
    } else {
      throw CustomHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }

  Future<ProfileDto> getOneProfile(String id) async {
    var profile = await _customHttpClient.get("profile/$id");

    if (profile.statusCode == 201 && profile.body != null) {
      return ProfileDto.fromJson(jsonDecode(profile.body));
    } else if (profile.body == null) {
      throw CustomHttpException("Profile not found", profile.statusCode);
    } else {
      throw CustomHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }

  Future<ProfileDto> getProfileByUsername(String userName) async {
    var profile = await _customHttpClient.get("profile/user/$userName");

    if (profile.statusCode == 201 && profile.body != null) {
      return ProfileDto.fromJson(jsonDecode(profile.body));
    } else if (profile.body == null) {
      throw CustomHttpException("Profile not found", profile.statusCode);
    } else {
      throw CustomHttpException(
          json.decode(profile.body)['message'] ?? "Unknown error",
          profile.statusCode);
    }
  }
}
