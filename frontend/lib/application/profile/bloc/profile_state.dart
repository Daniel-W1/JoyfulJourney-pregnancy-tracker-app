import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/profile/profile.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileStateInitial;
  const factory ProfileState.loading() = ProfileStateLoading;
  const factory ProfileState.success({required ProfileDomain profile}) = ProfileStateSuccess;
  const factory ProfileState.failure({required ProfileFailure failure}) = ProfileStateFailure;
}