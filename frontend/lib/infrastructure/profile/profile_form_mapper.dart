import 'package:frontend/domain/profile/profile_form.dart';
import 'package:frontend/infrastructure/profile/profile_form_dto.dart';

extension PFMapper on ProfileForm {
  ProfileFormDto toDto() {
    return ProfileFormDto(
        firstName: firstName,
        lastName: lastName,
        profilePicture: profilePicture,
        bio: bio,
        followers: followers,
        following: following,
        socialMedia: socialMedia);
  }
}
