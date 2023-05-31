import 'package:frontend/domain/profile/profile_domain.dart';

class ProfileEntity {
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

  ProfileEntity({
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.profilePicture,
    required this.followers,
    required this.following,
    required this.comments,
    required this.posts,
    required this.socialMedia,
  });

  factory ProfileEntity.fromJson(Map<String, dynamic> json) {
    return ProfileEntity(
      userName: json['userName'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      bio: json['bio'],
      profilePicture: json['profilePicture'],
      followers: List<String>.from(json['followers']),
      following: List<String>.from(json['following']),
      comments: List<String>.from(json['comments']),
      posts: List<String>.from(json['posts']),
      socialMedia: List<String>.from(json['socialMedia']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'firstName': firstName,
      'lastName': lastName,
      'bio': bio,
      'profilePicture': profilePicture,
      'followers': followers,
      'following': following,
      'comments': comments,
      'posts': posts,
      'socialMedia': socialMedia,
    };
  }
  
  Map<String, dynamic> toSqlJson() {
    var serialized_followers = followers.join(',');
    var serialized_following = following.join(',');
    var serialized_comments = comments.join(',');
    var serialized_posts = posts.join(',');
    var serialized_socialMedia = socialMedia.join(',');
  
    return {
      'userName': userName,
      'firstName': firstName,
      'lastName': lastName,
      'bio': bio,
      'profilePicture': profilePicture,
      'followers': serialized_followers,
      'following': serialized_following,
      'comments': serialized_comments,
      'posts': serialized_posts,
      'socialMedia': serialized_socialMedia,
    };
  }  

  ProfileDomain toProfile() {
    return ProfileDomain(
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      bio: bio,
      profilePicture: profilePicture,
      followers: followers,
      following: following,
      comments: comments,
      posts: posts,
      socialMedia: socialMedia,
    );
  }
}
