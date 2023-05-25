import 'package:equatable/equatable.dart';

class EmailAddress extends Equatable {
  final String email;
  final RegExp emailRegex = RegExp(
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""");
  EmailAddress({required this.email}) {
    if (email.isEmpty) {
      throw Exception('Name can not be empty');
    }
    if (!emailRegex.hasMatch(email)) {
      throw Exception('Name must contain only alphabets');
    }
    if (email.isEmpty) {
      throw Exception('Name can not be empty');
    }
  }
  @override
  List<Object> get props => [email];

  factory EmailAddress.fromJson(Map<String, dynamic> json) {
    return EmailAddress(
      email: json['email'] as String,
    );
  }

  // Add the toJson method
  Map<String, dynamic> toJson() {
    return {
      'email': email,
    };
  }
}