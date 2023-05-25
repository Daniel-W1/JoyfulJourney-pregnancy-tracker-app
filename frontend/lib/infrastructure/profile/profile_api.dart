import "dart:convert";
import "package:frontend/domain/profile/profile_form.dart";
import "package:frontend/infrastructure/profile/profile_dto.dart";
import "package:frontend/infrastructure/profile/profile_form_dto.dart";
import "package:frontend/util/jj_http_client.dart";
import "package:frontend/util/jj_http_exception.dart";

class ProfileApi {
  JJHttpClient _customHttpClient = JJHttpClient();

  Future<ProfileDto> updateProfile(ProfileFormDto profileForm, String profileId) async {
    var updatedProfile = await _customHttpClient.put("profile/$profileId",
        body: json.encode(profileForm.toJson()));

    if (updatedProfile.statusCode == 201) {
      return ProfileDto.fromJson(jsonDecode(updatedProfile.body));
    } else {
      throw JJHttpException(
          json.decode(updatedProfile.body)['message'] ?? "Unknown error",
          updatedProfile.statusCode);
    }
  }

  Future<ProfileDto> getProfile(String profileId) async {
    var response = await _customHttpClient.get("profile/$profileId");

    if (response.statusCode == 200) {
      return ProfileDto.fromJson(json.decode(response.body));
    } else {
      throw Exception(
        "Unknown error",
      );
    }
  }

  Future<void> deleteAccount(String id) async {
    var response = await _customHttpClient.delete("profile/$id");

    if (response.statusCode != 204) {
      throw Exception("Unknown error");
    }
  }
}