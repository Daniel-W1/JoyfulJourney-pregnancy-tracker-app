class ProfileFormDto {
  final String firstName;
  final String lastName;
  final String profilePicture;
  final String bio;
  final List<String> followers;
  final List<String> following;
  final List<String> socialMedia;

  ProfileFormDto({
    required this.firstName,
    required this.lastName,
    required this.profilePicture,
    required this.bio,
    required this.followers,
    required this.following,
    required this.socialMedia,
  });

  factory ProfileFormDto.fromJson(Map<String, dynamic> json) {
    return ProfileFormDto(
      firstName: json['firstName'],
      lastName: json['lastName'],
      profilePicture: json['profilePicture'],
      bio: json['bio'],
      followers: (json['followers'] as List<dynamic>).cast<String>(),
      following: (json['following'] as List<dynamic>).cast<String>(),
      socialMedia: (json['socialMedia'] as List<dynamic>).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'profilePicture': profilePicture,
      'bio': bio,
      'followers': followers,
      'following': following,
      'socialMedia': socialMedia,
    };
  }
}
