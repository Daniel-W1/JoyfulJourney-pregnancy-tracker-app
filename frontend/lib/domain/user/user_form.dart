import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form.freezed.dart';
part 'user_form.g.dart';

@freezed
class UserForm with _$UserForm {

  const factory UserForm({
    required String username,
    required String password,
    required String email,
  }) = _UserForm;

  factory UserForm.fromJson(Map<String, dynamic> json) =>
      _$UserFormFromJson(json);
}