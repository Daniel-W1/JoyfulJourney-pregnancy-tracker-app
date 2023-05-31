import 'package:frontend/domain/profile/local/profile_entity.dart';

import '../../domain/profile/profile_domain.dart';
import 'profile_dto.dart';

extension ProfileMapper on ProfileDto {
  ProfileDomain toProfile() {
    return ProfileDomain(
      id: id,
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      bio: bio,
      followers: followers,
      following: following,
      comments: comments,
      posts: posts,
      socialMedia: socialMedia,
      profilePicture: profilePicture,
    );
  }

  ProfileDto fromProfile(ProfileDomain profile) {
    return ProfileDto(
      id: id,
      userName: profile.userName,
      firstName: profile.firstName,
      lastName: profile.lastName,
      bio: profile.bio,
      followers: profile.followers,
      following: profile.following,
      comments: profile.comments,
      posts: profile.posts,
      socialMedia: profile.socialMedia,
      profilePicture: profile.profilePicture,
    );
  }

  ProfileEntity toProfileEntity() {
    return ProfileEntity(
      id: id!,
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      bio: bio,
      followers: followers,
      following: following,
      comments: comments,
      posts: posts,
      socialMedia: socialMedia,
      profilePicture: profilePicture,
    );
  }
}
