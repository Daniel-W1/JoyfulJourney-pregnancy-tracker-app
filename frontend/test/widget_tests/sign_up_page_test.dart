import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/auth/signup/bloc/signup_bloc.dart';
import 'package:frontend/presentation/core/CommonWidgets/custom_text_form_field.dart';
import 'package:frontend/presentation/signup/Components/signup_form.dart';
import 'package:mockito/mockito.dart';

class MockSignupBloc extends Mock implements SignupBloc {}

void main() {
  group('SignUpForm', () {
    late MockSignupBloc signupBloc;

    setUp(() {
      signupBloc = MockSignupBloc();
    });

    testWidgets('Renders sign up form without involving SignUpBloc',
        (WidgetTester tester) async {
      // Build the SignUpForm widget with the mocked SignUpBloc
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MultiBlocProvider(
              providers: [
                BlocProvider<SignupBloc>(
                  create: (context) => signupBloc,
                ),
              ],
              child: SignUpForm(),
            ),
          ),
        ),
      );

      // Enter text in the name field
      await tester.enterText(
          find.widgetWithText(CustomTextFormField, 'Name'), 'John Doe');

      // Enter text in the username field
      await tester.enterText(
          find.widgetWithText(CustomTextFormField, 'Username'), 'johndoe');

      // Enter text in the phone number field
      await tester.enterText(
          find.widgetWithText(CustomTextFormField, 'Phone number'),
          '1234567890');

      // Enter text in the password field
      await tester.enterText(
          find.widgetWithText(CustomTextFormField, 'Password'), 'password');

      // Tap the sign up button
      await tester.tap(find.widgetWithText(ElevatedButton, 'Sign Up'));
      await tester.pump();
    });
  });
}
