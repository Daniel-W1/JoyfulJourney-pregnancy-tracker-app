import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/auth/signup/bloc/signup_bloc.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/application/auth/signup/bloc/signup_event.dart';
import 'package:go_router/go_router.dart';

import '../../../application/auth/signup/bloc/signup_state.dart';
import '../../core/CommonWidgets/custom_text_form_field.dart';
import '../../login/login_page.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final signUpBloc = BlocProvider.of<SignupBloc>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is SignupSuccess) {
            GoRouter.of(context).go('/');
          } else if (state is SignUpFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failure.toString()),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Form(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sign up",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              CustomTextFormField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                hint: 'write your name',
                validator: (String? value) {
                  // write your own validation here please
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Username",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              CustomTextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                hint: 'create your username',
                validator: (String? value) {
                  // write your own validation here please
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Phone number",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              CustomTextFormField(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                hint: 'write your phone number',
                validator: (String? value) {
                  // write your own validation here please
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
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
                hint: 'write your password',
                validator: (String? value) {
                  // write your own validation here please
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 175, 122, 122),
                ),
                onPressed: () {
                  // Use the SignUpBloc and SignUpEvent to send the data to the backend
                  // and then navigate to the login page if the signup is successful,
                  // otherwise show an error message.

                  SignupForm signupForm = SignupForm(
                    username: _nameController.text,
                    email: _emailController.text,
                    password: _passwordController.text,
                  );

                  signUpBloc.add(SignupEvent.signup(signupForm));
                  // Navigate to the login page
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const LoginPage()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
