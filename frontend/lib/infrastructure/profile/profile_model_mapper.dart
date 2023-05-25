import '../../domain/profile/profile_domain.dart';
import 'profile_dto.dart';

extension ProfileMapper on ProfileDto {
  Profile toProfile() {
    return Profile(
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      bio: bio,
      profilePictureUrl: profilePictureUrl,
      followers: followers,
      following: following,
      comments: comments,
      posts: posts,
      socialmedias: socialmedias,
    );
  }
}