import '../../domain/profile/profile_domain.dart';
import 'profile_dto.dart';

extension ProfileMapper on ProfileDto {
  ProfileDomain toProfile() {
    return ProfileDomain(
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      bio: bio,
      followers: followers,
      following: following,
      comments: comments,
      posts: posts,
      socialmedia: socialmedias,
      image: image,
    );
  }
}