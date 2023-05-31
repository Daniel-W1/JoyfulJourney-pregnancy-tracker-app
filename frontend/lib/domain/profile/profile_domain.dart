import 'dart:core';

class ProfileDomain {
  final String? id;
  final String userName;
  final String firstName;
  final String lastName;
  final String bio;
  final String profilePicture;
  final List<String> followers;
  final List<String> following;
  final List<String> comments;
  final List<String> posts;
  final List<String> socialMedia;

  ProfileDomain({
    this.id,
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
}
