class UserDto {
  final String id;
  final String username;
  final String password;
  final String email;
  final List<String> roles;

  UserDto({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.roles,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      email: json['email'],
      roles: (json['roles'] as List<dynamic>).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'email': email,
      'roles': roles,
    };
  }
}
