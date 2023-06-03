import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/domain/auth/auth_failure.dart';
import 'package:frontend/domain/auth/user_domain.dart';
import 'package:frontend/domain/user/user_repository_interface.dart';
import 'package:frontend/infrastructure/user/user_api.dart';
import 'package:frontend/infrastructure/auth/user_dto.dart';
import 'package:frontend/infrastructure/user/user_repository.dart';

void main() {
  late UserRepository userRepository;
  late UserAPI userApi;

  setUp(() {
    userApi = UserAPI();
    userRepository = UserRepository(userApi);
  });

  group('getUsers', () {
    test('should return a list of UserDomain when successful', () async {
      // Arrange
      final usersDto = [
        UserDto(
            id: '1',
            userName: 'User 1',
            email: '',
            password: '',
            profileId: '',
            roles: []),
        UserDto(
            id: '2',
            userName: '',
            email: '',
            password: '',
            profileId: '',
            roles: []),
      ];
      final expectedUsers = usersDto
          .map((userDto) => UserDomain.fromJson(userDto.toJson()))
          .toList();

      // Act
      final result = await userRepository.getUsers();

      // Assert
      expect(result, equals(Right(expectedUsers)));
    });

    test('should return AuthFailure.serverError when an error occurs',
        () async {
      // Arrange
      final error = Exception('Server error');

      // Mocking the UserAPI's getUsers method to throw an exception
      // userApi.getUsers = () => throw error;

      // Act
      final result = await userRepository.getUsers();

      // Assert
      expect(result, equals(Left(AuthFailure.serverError())));
    });
  });

  group('deleteUser', () {
    test('should return unit when successful', () async {
      // Arrange
      final userId = '1';

      // Act
      final result = await userRepository.deleteUser();

      // Assert
      expect(result, equals(Right(unit)));
    });

    test('should return AuthFailure.serverError when an error occurs',
        () async {
      // Arrange
      final userId = '1';
      final error = Exception('Server error');

      // Mocking the UserAPI's deleteUser method to throw an exception
      (userId) => throw error;

      // Act
      final result = await userRepository.deleteUser();

      // Assert
      expect(result, equals(Left(AuthFailure.serverError())));
    });
  });

  group('setUserRole', () {
    test('should return the updated user domain when successful', () async {
      // Arrange
      final userDomain = UserDomain(
          id: '1',
          email: '',
          password: '',
          profileId: '',
          roles: [],
          userName: '');
      final userDto = UserDto.fromJson(userDomain.toJson());

      // Mocking the UserAPI's setUserRole method to return the updated user DTO
      // userApi.setUserRole = (user) => Future.value(userDto);

      // Act
      final result = await userRepository.setUserRole(userDomain);

      // Assert
      expect(result, equals(Right(UserDomain.fromJson(userDto.toJson()))));
    });

    test('should return AuthFailure.serverError when an error occurs',
        () async {
      // Arrange
      final userDomain = UserDomain(
          id: '1',
          userName: 'User',
          email: '',
          password: '',
          profileId: '',
          roles: []);
      final error = Exception('Server error');

      // Mocking the UserAPI's setUserRole method to throw an exception
      // userApi.setUserRole = (user) => throw error;

      // Act
      final result = await userRepository.setUserRole(userDomain);

      // Assert
      expect(result, equals(Left(AuthFailure.serverError())));
    });
  });
}
