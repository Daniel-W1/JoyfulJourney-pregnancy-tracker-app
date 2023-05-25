import 'dart:core';

class ProfileDomain {
  final String userName;
  final String firstName;
  final String lastName;
  final String bio;
  final String image;
  final List<String> followers;
  final List<String> following;
  final List<String> comments;
  final List<String> posts;
  final List<String> socialmedia;

  ProfileDomain({
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.bio,
    required this.followers,
    required this.following,
    required this.posts,
    required this.comments,
    required this.socialmedia,
  });
}
