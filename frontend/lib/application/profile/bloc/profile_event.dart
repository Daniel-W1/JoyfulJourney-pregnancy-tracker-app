import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/profile/profile.dart';

part 'profile_event.freezed.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.update({required ProfileForm profileForm, required String profileId}) = ProfileEventUpdate;
  const factory ProfileEvent.getProfile({required String profileId}) = ProfileEventGetProfile;
}