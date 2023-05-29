class UserForm {
  final String username;
  final String password;
  final String email;

  UserForm({
    required this.username,
    required this.password,
    required this.email,
  });

  factory UserForm.fromJson(Map<String, dynamic> json) {
    return UserForm(
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
    );
  }
}
