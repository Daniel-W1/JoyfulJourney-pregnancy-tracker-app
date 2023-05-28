import 'package:frontend/domain/profile/profile.dart';

class ProfileState {
  const ProfileState._();

  const factory ProfileState.initial() = ProfileStateInitial;

  const factory ProfileState.loading() = ProfileStateLoading;

  const factory ProfileState.success({required ProfileDomain profile}) = ProfileStateSuccess;

  const factory ProfileState.failure({required ProfileFailure failure}) = ProfileStateFailure;

  ProfileState copyWith({
    ProfileDomain? profile,
    ProfileFailure? failure,
  }) {
    if (profile != null) {
      return ProfileState.success(profile: profile);
    } else if (failure != null) {
      return ProfileState.failure(failure: failure);
    } else {
      return this;
    }
  }
}

class ProfileStateInitial extends ProfileState {
  const ProfileStateInitial() : super._();
}

class ProfileStateLoading extends ProfileState {
  const ProfileStateLoading() : super._();
}

class ProfileStateSuccess extends ProfileState {
  final ProfileDomain profile;

  const ProfileStateSuccess({required this.profile}) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileStateSuccess && runtimeType == other.runtimeType && profile == other.profile;

  @override
  int get hashCode => runtimeType.hashCode ^ profile.hashCode;
}

class ProfileStateFailure extends ProfileState {
  final ProfileFailure failure;

  const ProfileStateFailure({required this.failure}) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileStateFailure &&
          runtimeType == other.runtimeType &&
          failure == other.failure;

  @override
  int get hashCode => runtimeType.hashCode ^ failure.hashCode;
}