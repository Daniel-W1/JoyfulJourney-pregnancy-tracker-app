class UserDomain {
  final String? id;
  final String userName;
  final String password;
  final String email;
  final String profileId;
  final List<String> roles;

  UserDomain({
    this.id,
    required this.userName,
    required this.password,
    required this.email,
    required this.profileId,
    required this.roles,
  });

  factory UserDomain.fromJson(Map<String, dynamic> json) {
    return UserDomain(
      id: json['_id'] as String,
      userName: json['userName'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      profileId: json['profileId'] as String,
      roles: (json['roles'] as List<dynamic>).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'password': password,
      'email': email,
      'profileId': profileId,
      'roles': roles,
    };
  }
}
