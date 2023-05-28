class UserFormDto {
  final String username;
  final String password;
  final String email;

  UserFormDto({
    required this.username,
    required this.password,
    required this.email,
  });

  factory UserFormDto.fromJson(Map<String, dynamic> json) {
    return UserFormDto(
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
