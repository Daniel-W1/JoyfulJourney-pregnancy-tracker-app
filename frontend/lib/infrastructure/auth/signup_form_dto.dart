class SignupFormDto {
  final String username;
  final String password;
  final String email;

  SignupFormDto({
    required this.username,
    required this.password,
    required this.email,
  });

  factory SignupFormDto.fromJson(Map<String, dynamic> json) {
    return SignupFormDto(
      username: json['username'],
      password: json['password'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'email': email,
    };
  }
}
