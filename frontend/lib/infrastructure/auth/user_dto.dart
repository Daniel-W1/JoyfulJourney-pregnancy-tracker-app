class UserDto {
  final String? id;
  final String userName;
  final String password;
  final String email;
  final String profileId;
  final List<String> roles;

  UserDto({
    this.id,
    required this.userName,
    required this.password,
    required this.email,
    required this.profileId,
    required this.roles,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json['_id'],
      userName: json['userName'],
      password: json['password'],
      email: json['email'],
      profileId: json['profileId'],
      roles: (json['roles'] as List<dynamic>).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'userName': userName,
      'password': password,
      'email': email,
      'profileId': profileId,
      'roles': roles,
    };
  }
}
