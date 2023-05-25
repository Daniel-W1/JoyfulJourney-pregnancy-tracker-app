import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_form.freezed.dart';

@freezed
class ProfileForm with _$ProfileForm {
  const factory ProfileForm(
      {required String firstName,
      required String lastName,
      required String bio,
      required List<String> followers,
      required List<String> following,
      required List<String> socialmedia,
      required String image}) = _ProfileForm;
}