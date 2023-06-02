import 'package:dartz/dartz.dart';
import 'package:frontend/domain/profile/profile_domain.dart';
import 'package:frontend/domain/profile/profile_failure.dart';
import 'package:frontend/domain/profile/profile_form.dart';
import 'package:frontend/domain/profile/profile_repository_interface.dart';
import 'package:frontend/infrastructure/profile/profile_api.dart';
import 'package:frontend/infrastructure/profile/profile_form_mapper.dart';
import 'package:frontend/infrastructure/profile/profile_mapper.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';
import 'package:frontend/util/jj_timeout_exception.dart';

class ProfileRepository implements ProfileRepositoryInterface {
  final ProfileApi profileApi;
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;

  ProfileRepository(this.profileApi);

  @override
  Future<Either<ProfileFailure, ProfileDomain>> updateProfile({required ProfileForm profileForm, required String profileId}) async {
    try {
      var profile = await profileApi.updateProfile(profileForm.toDto(), profileId);
      await databaseHelper.addProfiles([profile]);
      return right(profile.toProfile());
    } catch (e) {
      return left(ProfileFailure.serverError());
    }
  }

  @override
  Future<Either<ProfileFailure, ProfileDomain>> getProfile(String userId) async {
    try {
      var profile = await profileApi.getProfile(userId);
      await databaseHelper.addProfiles([profile]);
      return right(profile.toProfile());
    } on JJTimeoutException catch (timeout) {
      var profile = await databaseHelper.getProfile(userId);
      if (profile == null) {
        return left(ProfileFailure.serverError());
      } else {
        return right(profile);
      }
    } catch (e) {
      return left(ProfileFailure.serverError());

    }
  }
}
