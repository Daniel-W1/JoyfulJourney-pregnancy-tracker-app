import 'package:frontend/domain/profile/profile_domain.dart';

class ProfileEntity {
  final String id;
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
    required this.id,
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
      id: json['_id'],
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
  factory ProfileEntity.fromSqlJson(Map<String, dynamic> json) {
    return ProfileEntity(
      id: json['_id'],
      userName: json['userName'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      bio: json['bio'],
      profilePicture: '',
      followers: List<String>.from(json['followers'].split(',')),
      following: List<String>.from(json['following'].split(',')),
      comments: List<String>.from(json['comments'].split(',')),
      posts: List<String>.from(json['posts'].split(',')),
      socialMedia: List<String>.from(json['socialMedia'].split(',')),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
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
      'id': id,
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

  ProfileDomain toProfileDomain() {
    return ProfileDomain(
      id: id,
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
