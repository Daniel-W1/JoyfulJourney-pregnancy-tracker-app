import 'package:dartz/dartz.dart';
import 'package:frontend/domain/profile/profile_domain.dart';
import 'package:frontend/domain/profile/profile_failure.dart';
import 'package:frontend/domain/profile/profile_form.dart';
import 'package:frontend/domain/profile/profile_repository_interface.dart';
import 'package:frontend/infrastructure/profile/profile_api.dart';
import 'package:frontend/infrastructure/profile/profile_form_mapper.dart';
import 'package:frontend/infrastructure/profile/profile_mapper.dart';

class ProfileRepository implements ProfileRepositoryInterface {
  final ProfileApi profileApi;

  ProfileRepository(this.profileApi);

  @override
  Future<Either<ProfileFailure, ProfileDomain>> updateProfile({required ProfileForm profileForm, required String profileId}) async {
    try {
      var profile = await profileApi.updateProfile(profileForm.toDto(), profileId);
      return right(profile.toProfile());
    } catch (e) {
      return left(ProfileFailure.serverError());
    }
  }

  @override
  Future<Either<ProfileFailure, ProfileDomain>> getProfile(String userId) async {
    try {
      var profile = await profileApi.getProfile(userId);
      print(profile);
      return right(profile.toProfile());
    } catch (e) {
      return left(ProfileFailure.serverError());
    }
  }
}
