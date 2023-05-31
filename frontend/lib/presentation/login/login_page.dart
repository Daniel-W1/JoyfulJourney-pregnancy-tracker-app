import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/database/shared_preferences/jj_shared_preferences_service.dart';
import 'package:frontend/infrastructure/auth/auth_api.dart';
import 'package:frontend/infrastructure/auth/auth_repository.dart';

import '../../application/auth/login/bloc/login_bloc.dart';
import 'Components/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthApi authAPI = AuthApi();
    SharedPreferenceService sharedPreferenceService = SharedPreferenceService();

    AuthRepository authRepository =
        AuthRepository(authAPI, sharedPreferenceService);

    LoginBloc loginBloc = LoginBloc(authRepositoryInterface: authRepository);

    return BlocProvider(
      create: (context) => LoginBloc(authRepositoryInterface: authRepository),
      child: Scaffold(
        body: LoginBody(),
      ),
    );
  }
}
