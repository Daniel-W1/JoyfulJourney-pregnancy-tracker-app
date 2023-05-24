import 'package:frontend/domain/profile/edit_profile_domain.dart';
import 'package:frontend/domain/profile/profile_domain.dart';

abstract class ProfileRepositoryInterface {
  Future<Profile> updateProfile({required EditProfileForm profileForm});

  Future<Profile> getProfile();

  Future<void> deleteAccount();
}
