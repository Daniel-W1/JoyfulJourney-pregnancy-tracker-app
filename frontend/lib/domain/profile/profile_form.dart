class ProfileForm {
  final String firstName;
  final String lastName;
  final String bio;
  final List<String> followers;
  final List<String> following;
  final List<String> socialMedia;
  final String profilePicture;

  ProfileForm({
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.followers,
    required this.following,
    required this.socialMedia,
    required this.profilePicture,
  });
}
