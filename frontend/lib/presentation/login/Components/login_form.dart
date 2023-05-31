import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/auth/login/bloc/login_bloc.dart';
import 'package:frontend/application/auth/login/bloc/login_event.dart';
import 'package:frontend/domain/auth/auth.dart';

import '../../../../../../core/CommonWidgets/custom_text_form_field.dart';
import '../../../../../../core/constants/color.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            CustomTextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              hint: 'write your email',
              validator: (String? value) {
                // write your own validation here please
                return null;
              },
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            CustomTextFormField(
              controller: _passwordController,
              obsecure: true,
              keyboardType: TextInputType.text,
              hint: 'write your password',
              validator: (String? value) {
                // write your own validation here please
                return null;
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: kPrimaryColor,
              ),
              onPressed: () {
                // Use the LoginBloc and LoginEvent to send the data to the backend
                // and handle the login logic.

                final email = _emailController.text;
                final password = _passwordController.text;

                LoginForm loginForm = LoginForm(
                  username: email,
                  password: password,
                );
                loginBloc.add(LoginEvent.login(loginForm));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
