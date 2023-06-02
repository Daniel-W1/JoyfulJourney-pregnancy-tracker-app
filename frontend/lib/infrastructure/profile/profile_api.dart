import "dart:convert";
import "package:frontend/domain/profile/profile_form.dart";
import "package:frontend/infrastructure/profile/profile_dto.dart";
import "package:frontend/infrastructure/profile/profile_form_dto.dart";
import "package:frontend/util/jj_http_client.dart";
import "package:frontend/util/jj_http_exception.dart";
import "package:frontend/util/jj_timeout_exception.dart";

class ProfileApi {
  JJHttpClient _customHttpClient = JJHttpClient();

  Future<ProfileDto> updateProfile(
      ProfileFormDto profileForm, String profileId) async {
    var updatedProfile = await _customHttpClient.put("profile/$profileId",
        body: json.encode(profileForm.toJson()));

    print(updatedProfile.body);
    print(updatedProfile.statusCode);
    print("--------------------------------");

    if (updatedProfile.statusCode == 200) {
      return ProfileDto.fromJson(jsonDecode(updatedProfile.body));
    } else {
      throw JJHttpException(
          json.decode(updatedProfile.body)['message'] ?? "Unknown error",
          updatedProfile.statusCode);
    }
  }

  Future<ProfileDto> getProfile(String profileId) async {
    try {
      var response = await _customHttpClient.get("profile/$profileId").timeout(jjTimeout);

      if (response.statusCode == 200) {
        return ProfileDto.fromJson(json.decode(response.body));
      } else {
        throw JJHttpException(
            json.decode(response.body)['message'] ?? "Unknown error",
            response.statusCode);
      }
    } catch (e) {
      throw JJTimeoutException();
    }
  }

  Future<void> deleteAccount(String id) async {
    var response = await _customHttpClient.delete("profile/$id");

    if (response.statusCode != 204) {
      throw Exception("Unknown error");
    }
  }
}
