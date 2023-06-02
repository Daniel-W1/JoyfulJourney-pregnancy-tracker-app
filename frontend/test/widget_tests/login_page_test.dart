import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/auth/login/bloc/login_bloc.dart';
import 'package:frontend/presentation/login/Components/login_form.dart';
import 'package:mockito/mockito.dart';

class MockLoginBloc extends Mock implements LoginBloc {}

void main() {
  testWidgets('Testing the login form', (tester) async {
    final mockLoginBloc = MockLoginBloc();

    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<LoginBloc>(
          create: (context) => mockLoginBloc,
          child: LoginFormWidget(),
        ),
      ),
    );

    // Find the form fields
    final emailField = find.byKey(const Key('loginForm_usernameField'));
    final passwordField = find.byKey(const Key('loginForm_passwordField'));

    // Enter text into the form fields
    await tester.enterText(emailField, 'email');
    await tester.enterText(passwordField, 'password');

    // Trigger the login button
    await tester.tap(find.byType(ElevatedButton));
  });
}
