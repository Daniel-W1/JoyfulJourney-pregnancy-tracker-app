class UserDomain {
  final String userName;
  final String password;
  final String role;
  final String email;
  final String profileId;

  UserDomain({
    required this.userName,
    required this.password,
    required this.profileId,
    required this.email,
    required this.role,
  });
}
