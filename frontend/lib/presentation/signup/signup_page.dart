import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/infrastructure/auth/auth_api.dart';
import 'package:frontend/infrastructure/auth/auth_repository.dart';
import 'package:frontend/application/auth/signup/bloc/signup_bloc.dart';
import 'package:frontend/presentation/signup/Components/signup_body.dart';

import '../../local_data/shared_preferences/jj_shared_preferences_service.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create the API instance
    AuthApi authAPI = AuthApi();
    SharedPreferenceService sharedPreferenceService = SharedPreferenceService();

    // Create the repository instance
    AuthRepository authRepository =
        AuthRepository(authAPI, sharedPreferenceService);

    // Create the bloc instance
    SignupBloc signUpBloc = SignupBloc(authRepositoryInterface: authRepository);

    return BlocProvider(
      create: (context) => SignupBloc(authRepositoryInterface: authRepository),
      child: Scaffold(
        body: SignUpBody(),
      ),
    );
  }
}
