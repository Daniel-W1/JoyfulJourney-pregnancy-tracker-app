import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/auth/login/bloc/login_bloc.dart';
import 'package:frontend/application/auth/signup/bloc/signup_bloc.dart';
import 'package:frontend/infrastructure/auth/auth_api.dart';
import 'package:frontend/local_data/shared_preferences/jj_shared_preferences_service.dart';

import '../../infrastructure/auth/auth_repository.dart';
import 'components/others_body.dart';

class OthersPage extends StatelessWidget {
  OthersPage({super.key});

  final LoginBloc loginBloc = LoginBloc(
      authRepositoryInterface:
          AuthRepository(AuthApi(), SharedPreferenceService()));

  final SignupBloc signupBloc = SignupBloc(
      authRepositoryInterface:
          AuthRepository(AuthApi(), SharedPreferenceService()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => loginBloc,
          ),
          BlocProvider(
            create: (context) => signupBloc,
          ),
        ],
        child: OthersBody(),
      ),
    );
  }
}
