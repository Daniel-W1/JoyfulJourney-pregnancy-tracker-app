import 'package:dartz/dartz.dart';
import 'package:frontend/local_data/shared_preferences/jj_shared_preferences_service.dart';
import 'package:frontend/domain/auth/auth_failure.dart';
import 'package:frontend/domain/auth/auth_repository_interface.dart';
import 'package:frontend/domain/auth/login_form.dart';
import 'package:frontend/domain/auth/signup_form.dart';
import 'package:frontend/domain/auth/user_domain.dart';
import 'package:frontend/infrastructure/auth/login_response_dto.dart';
import 'package:frontend/infrastructure/auth/signup_form_mapper.dart';
import 'package:frontend/infrastructure/auth/user_dto.dart';
import 'package:frontend/infrastructure/auth/user_mapper.dart';

import 'auth_api.dart';

class AuthRepository implements AuthRepositoryInterface {
  AuthApi authApi;
  SharedPreferenceService sharedPreferences;
  // User? _authenticatedUser;

  AuthRepository(this.authApi, this.sharedPreferences);

  @override
  Future<Either<AuthFailure, UserDomain>> signup(
      {required SignupForm signupForm}) async {
    try {
      UserDto user = await authApi.signup(signupFormDto: signupForm.toDto());
      return Right(user.toUserDomain());
    } catch (e) {
      return Left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, UserDomain>> login(
      {required LoginForm loginForm}) async {
    try {
      LoginResponseDto response = await authApi.login(
        username: loginForm.username,
        password: loginForm.password,
      );
      await sharedPreferences.setAccessToken(response.access_token);
      await sharedPreferences
          .setAuthenticatedUser(response.user.toUserDomain());
      await sharedPreferences.setProfileId(response.user.profileId);
      return Right(response.user.toUserDomain());
    } catch (e) {
      return Left(AuthFailure.serverError());
    }

    // _authenticatedUser = response.user.toModel();
    // return Right(_authenticatedUser);
  }

  @override
  Future<void> logout() async {
    await sharedPreferences.removeAccessToken();
    await sharedPreferences.removeAuthenticatedUser();
    await sharedPreferences.removeProfileId();
    // _authenticatedUser = null;
  }

  // @override
  // Future<Either<Error, User>> changePassword(
  //     {required ChangePasswordForm changePasswordForm}) async {
  //   User user =
  //       await authApi.changePassword(changePassword: changePasswordForm);
  //   return Right(user);
  // }

  // @override
  // Future<String?> getAuthToken() {
  //   return sharedPreferences.getToken();
  // }

  // @override
  // Future<User?> getAuthenticatedUser() async {
  //   _authenticatedUser = await sharedPreferences.getAuthenticatedUser();
  //   return _authenticatedUser;
  // }

  // @override
  // User? getAuthenticatedUserSync() {
  //   return _authenticatedUser;
  // }
}
