import 'package:frontend/domain/profile/profile_domain.dart';

class ProfileEntity {
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

  ProfileEntity({
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.image,
    required this.followers,
    required this.following,
    required this.comments,
    required this.posts,
    required this.socialmedia,
  });

  factory ProfileEntity.fromJson(Map<String, dynamic> json) {
    return ProfileEntity(
      userName: json['userName'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      bio: json['bio'],
      image: json['image'],
      followers: List<String>.from(json['followers']),
      following: List<String>.from(json['following']),
      comments: List<String>.from(json['comments']),
      posts: List<String>.from(json['posts']),
      socialmedia: List<String>.from(json['socialmedia']),
    );
  }

  ProfileDomain toProfile() {
    return ProfileDomain(
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      bio: bio,
      image: image,
      followers: followers,
      following: following,
      comments: comments,
      posts: posts,
      socialmedia: socialmedia,
    );
  }
}
