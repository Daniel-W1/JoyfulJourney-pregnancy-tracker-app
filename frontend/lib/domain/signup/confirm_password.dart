// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class ConfirmPassword extends Equatable {
  String? confirmPassword;
  String? password;
  ConfirmPassword({
    this.confirmPassword,
    this.password,
  }) {
    if (this.confirmPassword!.length < 8) {
      throw Exception("Password should not below 8 character");
    } else if (this.confirmPassword != this.password) {
      throw Exception("password not matched!");
    }
  }
  @override
  String toString() {
    return confirmPassword!;
  }

  @override
  List<Object> get props => [confirmPassword!];
}
