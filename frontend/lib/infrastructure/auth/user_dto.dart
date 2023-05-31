class UserDto {
  final String? id;
  final String username;
  final String password;
  final String email;
  final String profileId;
  final List<String> roles;

  UserDto({
    this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.profileId,
    required this.roles,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json['_id'],
      username: json['username'],
      password: json['password'],
      email: json['email'],
      profileId: json['profileId'],
      roles: (json['roles'] as List<dynamic>).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'email': email,
      'profileId': profileId,
      'roles': roles,
    };
  }
}
