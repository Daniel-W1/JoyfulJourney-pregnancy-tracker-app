import 'package:frontend/infrastructure/profile/profile_api.dart';
import 'package:test/test.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/profile/profile_domain.dart';
import 'package:frontend/domain/profile/profile_failure.dart';
import 'package:frontend/domain/profile/profile_form.dart';
import 'package:frontend/infrastructure/profile/profile_repository.dart';
import 'package:mockito/mockito.dart';

class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late ProfileRepository profileRepository;
  late MockProfileRepository mockProfileRepository;

  setUp(() {
    mockProfileRepository = MockProfileRepository();
    profileRepository = ProfileRepository(mockProfileRepository as ProfileApi);
  });

  group('updateProfile', () {
    test('should return ProfileDomain when repository call is successful', () async {
      // Arrange
      final profileId = '123';
      final profileForm = ProfileForm( bio: '', firstName: '', followers: [], following: [], lastName: '', profilePicture: '', socialMedia: []);
      final profileDomain = ProfileDomain(id: profileId, bio: '', comments: [], firstName: '', followers: [], following: [], lastName: '', posts: [], profilePicture: '', socialMedia: [], userName: '');

      when(mockProfileRepository.updateProfile(profileForm: profileForm, profileId: profileId))
          .thenAnswer((_) async => right(profileDomain));

      // Act
      final result = await profileRepository.updateProfile(profileForm: profileForm, profileId: profileId);

      // Assert
      expect(result, equals(right(profileDomain)));
      verify(mockProfileRepository.updateProfile(profileForm: profileForm, profileId: profileId)).called(1);
    });

    test('should return ProfileFailure.serverError when repository call fails', () async {
      // Arrange
      final profileId = '123';
      final profileForm = ProfileForm(bio: '', firstName: '', followers: [], following: [], lastName: '', profilePicture: '', socialMedia: []);

      when(mockProfileRepository.updateProfile(profileForm: profileForm, profileId: profileId))
          .thenAnswer((_) async => left(ProfileFailure.serverError()));

      // Act
      final result = await profileRepository.updateProfile(profileForm: profileForm, profileId: profileId);

      // Assert
      expect(result, equals(left(ProfileFailure.serverError())));
      verify(mockProfileRepository.updateProfile(profileForm: profileForm, profileId: profileId)).called(1);
    });
  });

  group('getProfile', () {
    test('should return ProfileDomain when repository call is successful', () async {
      // Arrange
      final userId = '123';
      final profileDomain = ProfileDomain(id: '123', bio: '', comments: [], firstName: '', followers: [], following: [], lastName: '', posts: [], profilePicture: '', socialMedia: [], userName: '');

      when(mockProfileRepository.getProfile(userId))
          .thenAnswer((_) async => right(profileDomain));

      // Act
      final result = await profileRepository.getProfile(userId);

      // Assert
      expect(result, equals(right(profileDomain)));
      verify(mockProfileRepository.getProfile(userId)).called(1);
    });

    test('should return ProfileFailure.serverError when repository call fails', () async {
      // Arrange
      final userId = '123';

      when(mockProfileRepository.getProfile(userId))
          .thenAnswer((_) async => left(ProfileFailure.serverError()));

      // Act
      final result = await profileRepository.getProfile(userId);

      // Assert
      expect(result, equals(left(ProfileFailure.serverError())));
      verify(mockProfileRepository.getProfile(userId)).called(1);
    });
  });

  // Add more unit tests for other methods in the ProfileRepository class
}
