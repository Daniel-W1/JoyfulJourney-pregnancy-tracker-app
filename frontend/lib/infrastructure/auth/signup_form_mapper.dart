import 'package:frontend/domain/auth/signup_form.dart';
import 'package:frontend/infrastructure/auth/signup_form_dto.dart';

extension SignUpFormMapper on SignupForm {
  SignupFormDto toDto() => SignupFormDto(
        userName: userName ?? '',
        password: password ?? '',
        email: email ?? '',
        // confirmPassword: confirmPassword,
      );
}
