import 'dart:io';
import 'dart:developer' as developer;

class ProfileRepository implements ProfileRepositoryInterface {
  final ProfileApi profileApi;

  ProfileRepository(this.profileApi);

  @override
  Future<Either<Profile>> updateProfile(
      {required EditProfileForm profileForm}) async {
    try {
      ProfileDto profileDto =
          await profileApi.updateProfile(profileForm: profileForm);
      return Either(val: profileDto.toProfile());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while updating profile in Profile Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Profile>> getProfile() async {
    try {
      ProfileDto profileDto = await profileApi.getProfile();
      return Either(val: profileDto.toProfile());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while getting profile in Profile Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deleteAccount() async {
    try {
      await profileApi.deleteAccount();
      return Either();
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while deleting account in Profile Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}