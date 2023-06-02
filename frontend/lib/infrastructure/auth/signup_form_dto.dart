class SignupFormDto {
  final String userName;
  final String password;
  final String email;

  SignupFormDto({
    required this.userName,
    required this.password,
    required this.email,
  });

  factory SignupFormDto.fromJson(Map<String, dynamic> json) {
    return SignupFormDto(
      userName: json['userName'],
      password: json['password'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'password': password,
      'email': email,
    };
  }
}
