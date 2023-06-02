import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/auth/login/bloc/login_bloc.dart';
import 'package:frontend/application/auth/login/bloc/login_event.dart';
import 'package:frontend/application/auth/signup/bloc/signup_bloc.dart';
import 'package:frontend/application/auth/signup/bloc/signup_event.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/infrastructure/user/user_api.dart';
import 'package:frontend/infrastructure/user/user_repository.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/auth/change_password_form.dart';
import 'others_menu.dart';

class OthersBody extends StatefulWidget {
  const OthersBody({Key? key}) : super(key: key);

  @override
  State<OthersBody> createState() => _OthersBodyState();
}

class _OthersBodyState extends State<OthersBody> {
  void changePassword(oldPassword, newPassword) {
    BlocProvider.of<SignupBloc>(context).add(SignupEventChangePassword(
        ChangePasswordForm(
            currentPassword: oldPassword, newPassword: newPassword)));
  }

  void logout() {
    BlocProvider.of<LoginBloc>(context).add(const LoginEventLogout());
    GoRouter.of(context).go('/');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          OthersMenu(
            text: "Logout",
            press: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Logout'),
                    content: const Text('Are you sure you want to logout?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          logout();
                        },
                        child: const Text('Logout'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          OthersMenu(
              text: 'Change Password',
              press: () {
                showDialog(
                    context: context,
                    builder: (context) => ChangePasswordDialog(
                        onclick: (oldPassword, newPassword) =>
                            changePassword(oldPassword, newPassword)));
              }),
          OthersMenu(
            text: "Delete Account",
            press: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Delete Account'),
                    content: const Text(
                        'Are you sure you want to delete your account?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                          UserRepository userRepository =
                              UserRepository(UserAPI());
                          var result = await userRepository.deleteUser();

                          result.fold(
                              (l) => ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(l.toString()),
                                    backgroundColor: Colors.red,
                                  )), (r) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Account deleted successfully"),
                              backgroundColor: Colors.green,
                            ));
                            logout();
                          });
                        },
                        child: const Text('Delete Account'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class ChangePasswordDialog extends StatefulWidget {
  const ChangePasswordDialog({Key? key, this.onclick}) : super(key: key);

  final Function? onclick;
  @override
  _ChangePasswordDialogState createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<ChangePasswordDialog> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Change Password'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _oldPasswordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Old Password',
            ),
          ),
          TextField(
            controller: _newPasswordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'New Password',
            ),
          ),
          TextField(
            controller: _confirmPasswordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Confirm Password',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final String oldPassword = _oldPasswordController.text;
            final String newPassword = _newPasswordController.text;
            final String confirmPassword = _confirmPasswordController.text;

            if (newPassword != confirmPassword) {
              // Show an error message if the new password and confirm password do not match
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content:
                      Text('New password and confirm password do not match.'),
                ),
              );
            } else {
              widget.onclick!(oldPassword, newPassword);
              Navigator.of(context).pop();
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
