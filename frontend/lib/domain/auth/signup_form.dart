class SignupForm {
  final String? userName;
  final String? password;
  final String? email;

  SignupForm({
    required this.userName,
    required this.password,
    required this.email,
  });

  factory SignupForm.fromJson(Map<String, dynamic> json) {
    return SignupForm(
      userName: json['userName'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
    );
  }
}
