
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/user_name_domain.dart';
import 'package:frontend/domain/auth/password_domain.dart';

part 'login_form.freezed.dart';

@freezed
class LoginForm with _$LoginForm {
  const factory LoginForm({
    required Username username,
    required Password password,
  }) = _LoginForm;
}