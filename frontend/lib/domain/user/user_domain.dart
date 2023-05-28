class UserDomain {
  final String id;
  final String username;
  final String password;
  final String email;
  final List<String> roles;

  UserDomain({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.roles,
  });

  factory UserDomain.fromJson(Map<String, dynamic> json) {
    return UserDomain(
      id: json['id'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
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
