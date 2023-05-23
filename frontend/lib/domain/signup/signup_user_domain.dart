// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:frontend/domain/signup/fullname.dart';
import 'package:frontend/domain/signup/password_domain.dart';
import 'package:frontend/domain/signup/username_domain.dart';

class SignupDomain {
  Username username;
  Password password;
  Password confirmPassword;
  FullName fullName;

  SignupDomain({
    required this.username,
    required this.password,
    required this.confirmPassword,
    required this.fullName,
  });
}
