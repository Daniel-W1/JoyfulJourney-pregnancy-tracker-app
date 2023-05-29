class ProfileDto {
  final String userName;
  final String firstName;
  final String lastName;
  final String profilePicture;
  final String bio;
  final List<String> followers;
  final List<String> following;
  final List<String> posts;
  final List<String> comments;
  final List<String> socialMedia;

  ProfileDto({
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.profilePicture,
    required this.bio,
    required this.followers,
    required this.following,
    required this.posts,
    required this.comments,
    required this.socialMedia,
  });

  factory ProfileDto.fromJson(Map<String, dynamic> json) {
    return ProfileDto(
      userName: json['userName'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      profilePicture: json['profilePicture'],
      bio: json['bio'],
      followers: (json['followers'] as List<dynamic>).cast<String>(),
      following: (json['following'] as List<dynamic>).cast<String>(),
      posts: (json['posts'] as List<dynamic>).cast<String>(),
      comments: (json['comments'] as List<dynamic>).cast<String>(),
      socialMedia: (json['socialMedia'] as List<dynamic>).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'firstName': firstName,
      'lastName': lastName,
      'profilePicture': profilePicture,
      'bio': bio,
      'followers': followers,
      'following': following,
      'posts': posts,
      'comments': comments,
      'socialMedia': socialMedia,
    };
  }
}
