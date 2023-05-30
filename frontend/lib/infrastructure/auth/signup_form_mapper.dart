import 'package:frontend/domain/auth/signup_form.dart';
import 'package:frontend/infrastructure/auth/signup_form_dto.dart';

extension SignUpFormMapper on SignupForm {
  SignupFormDto toDto() => SignupFormDto(
        username: username.username,
        password: password.password,
        email: email.email,
        // confirmPassword: confirmPassword,
      );
}