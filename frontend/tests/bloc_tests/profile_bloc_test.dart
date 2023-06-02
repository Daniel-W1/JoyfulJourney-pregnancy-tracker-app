import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:frontend/application/profile/bloc/profile_bloc.dart';
import 'package:frontend/application/profile/bloc/profile_event.dart';
import 'package:frontend/application/profile/bloc/profile_state.dart';
import 'package:frontend/domain/profile/profile.dart';
import 'package:frontend/domain/profile/profile_repository_interface.dart';

class MockProfileRepository extends Mock
    implements ProfileRepositoryInterface {}

void main() {
  group('ProfileBloc', () {
    late MockProfileRepository mockProfileRepository;
    late ProfileBloc profileBloc;

    setUp(() {
      mockProfileRepository = MockProfileRepository();
      profileBloc =
          ProfileBloc(profileRepositoryInterface: mockProfileRepository);
    });

    test('initial state should be ProfileStateInitial', () {
      expect(profileBloc.state, equals(const ProfileStateInitial()));
    });

    test(
      'emits loading and success states when getting profile is successful',
      () {
        // Set up the mock response for the repository call
        when(mockProfileRepository.getProfile('profileId'))
            .thenAnswer((_) async => Right(ProfileDomain(
                  id: 'profileId',
                  bio: '',
                  comments: [],
                  firstName: '',
                  followers: [],
                  following: [],
                  lastName: '',
                  posts: [],
                  profilePicture: '',
                  socialMedia: [],
                  userName: '',
                )));

        // Add the event to the bloc
        profileBloc.add(ProfileEventGetProfile(profileId: 'profileId'));

        // Expect the emitted states
        expectLater(
          profileBloc.stream,
          emitsInOrder([
            const ProfileStateLoading(),
            ProfileStateSuccess(
              profile: ProfileDomain(
                id: 'profileId',
                bio: '',
                comments: [],
                firstName: '',
                followers: [],
                following: [],
                lastName: '',
                posts: [],
                profilePicture: '',
                socialMedia: [],
                userName: '',
              ),
            ),
          ]),
        );
      },
    );

    test(
      'emits loading and failure states when getting profile fails',
      () {
        // Set up the mock response for the repository call
        when(mockProfileRepository.getProfile('profileId'))
            .thenAnswer((_) async => left("error" as ProfileFailure));

        // Add the event to the bloc
        profileBloc.add(ProfileEventGetProfile(profileId: 'profileId'));

        // Expect the emitted states
        expectLater(
          profileBloc.stream,
          emitsInOrder([
            const ProfileStateLoading(),
          ]),
        );
      },
    );

    test(
      'emits loading and success states when updating profile is successful',
      () {
        // Set up the mock response for the repository call

        // Add the event to the bloc
        profileBloc.add(ProfileEventUpdate(
          profileForm: ProfileForm(
            bio: '',
            firstName: '',
            followers: [],
            following: [],
            lastName: '',
            profilePicture: '',
            socialMedia: [],
          ),
          profileId: 'profileId',
        ));

        // Expect the emitted states
        expectLater(
          profileBloc.stream,
          emitsInOrder([
            const ProfileStateLoading(),
            ProfileStateSuccess(
              profile: ProfileDomain(
                id: 'profileId',
                bio: '',
                comments: [],
                firstName: '',
                followers: [],
                following: [],
                lastName: '',
                posts: [],
                profilePicture: '',
                socialMedia: [],
                userName: '',
              ),
            ),
          ]),
        );
      },
    );
  });
}
