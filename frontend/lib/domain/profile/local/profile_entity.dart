import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/profile/profile_domain.dart';
part 'profile_entity.freezed.dart';
part 'profile_entity.g.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required String userName,
    required String firstName,
    required String lastName,
    required String bio  ,
    required String image,
    required List<String> followers,
    required List<String> following,
    required List<String> comments,
    required List<String> posts,
    required List<String> socialmedia,

  }) = _ProfileEntity;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}

extension ProfileEntityX on ProfileEntity {
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