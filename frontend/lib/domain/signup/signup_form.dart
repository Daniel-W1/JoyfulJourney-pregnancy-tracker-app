import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/signup/email.dart';
import 'package:frontend/domain/signup/fullname.dart';
import 'package:frontend/domain/signup/password_domain.dart';


part 'signup_form.freezed.dart';

@freezed
class SignUpForm with _$SignUpForm {
  const factory SignUpForm({
    required FullName name,
    required EmailAddress emailAddress,
    required Password password,    
    required Password confirmPassword,    
  }) = _SignUpForm;
}