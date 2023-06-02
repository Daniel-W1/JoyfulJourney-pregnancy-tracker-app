import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/infrastructure/auth/auth_api.dart';
import 'package:frontend/infrastructure/auth/auth_repository.dart';

import '../../application/auth/login/bloc/login_bloc.dart';
import '../../local_data/shared_preferences/jj_shared_preferences_service.dart';
import 'Components/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SharedPreferenceService sharedPreferenceService = SharedPreferenceService();
    AuthApi authAPI = AuthApi();

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
