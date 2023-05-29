import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/profile/profile.dart';

import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepositoryInterface profileRepositoryInterface;

  ProfileBloc({required this.profileRepositoryInterface}) : super(const ProfileStateInitial()) {

    on<ProfileEventGetProfile>((event, emit) async {
      emit(const ProfileStateLoading());

      Either<ProfileFailure, ProfileDomain> result = await profileRepositoryInterface.getProfile(event.profileId);

      result.fold(
        (l) => emit(ProfileStateFailure(failure: l)),
        (r) => emit(ProfileStateSuccess(profile: r))
      );
    });

    on<ProfileEventUpdate>((event, emit) async {
      emit(const ProfileStateLoading());

      Either<ProfileFailure, ProfileDomain> result = 
      await profileRepositoryInterface.updateProfile(profileForm:event.profileForm, profileId:event.profileId);

      result.fold(
        (l) => emit(ProfileStateFailure(failure: l)),
        (r) => emit(ProfileStateSuccess(profile: r))
      );
    });
  }
}
