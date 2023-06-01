class SignupForm {
  final String username;
  final String password;
  final String email;

  SignupForm({
    required this.username,
    required this.password,
    required this.email,
  });

  // factory SignupForm.fromJson(Map<String, dynamic> json) {
  //   return SignupForm(
  //     username: json['username'] as String,
  //     password: json['password'] as String,
  //     email: json['email'] as String,
  //   );
  // }
}
