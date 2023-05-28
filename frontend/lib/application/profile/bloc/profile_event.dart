import 'package:frontend/domain/profile/profile.dart';

class ProfileEvent {
  const ProfileEvent._();

  const factory ProfileEvent.update({
    required ProfileForm profileForm,
    required String profileId,
  }) = ProfileEventUpdate;

  const factory ProfileEvent.getProfile({
    required String profileId,
  }) = ProfileEventGetProfile;
}

class ProfileEventUpdate extends ProfileEvent {
  final ProfileForm profileForm;
  final String profileId;

  const ProfileEventUpdate({
    required this.profileForm,
    required this.profileId,
  }) : super._();
}

class ProfileEventGetProfile extends ProfileEvent {
  final String profileId;

  const ProfileEventGetProfile({
    required this.profileId,
  }) : super._();
}