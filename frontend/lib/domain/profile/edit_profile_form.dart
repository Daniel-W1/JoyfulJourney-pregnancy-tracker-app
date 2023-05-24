import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_form.freezed.dart';

@freezed
class EditProfileForm with _$EditProfileForm {
  const factory EditProfileForm(
      {required String name,
      required String email,
      required String bio,
      required String profilePicture}) = _EditProfileForm;
}