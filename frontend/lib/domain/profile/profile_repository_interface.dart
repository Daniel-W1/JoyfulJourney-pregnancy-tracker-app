import 'package:dartz/dartz.dart';
import 'package:frontend/domain/profile/profile_domain.dart';
import 'package:frontend/domain/profile/profile_failure.dart';
import 'package:frontend/domain/profile/profile_form.dart';

abstract class ProfileRepositoryInterface {
  Future<Either<ProfileFailure, ProfileDomain>> updateProfile( ProfileForm profileForm,String profileId);

  Future<Either<ProfileFailure, ProfileDomain>> getProfile(String profileId);

}
