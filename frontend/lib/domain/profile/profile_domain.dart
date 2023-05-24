import 'dart:core';

class Profile {
  final String userName;
  final String firstName;
  final String lastName;
  final String bio;
  final String profilePictureUrl;
  final List<String> followers;
  final List<String> following;
  final List<String> comments;
  final List<String> posts;
  final List<String> socialmedias;

  Profile({
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.profilePictureUrl,
    required this.bio,
    required this.followers,
    required this.following,
    required this.posts,
    required this.comments,
    required this.socialmedias,
  });
}
