import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_form.freezed.dart';

@freezed
class ChangePasswordForm with _$ChangePasswordForm {
  factory ChangePasswordForm({
    required String currentPassword,
    required String newPassword,
  }) = _ChangePasswordForm;
}