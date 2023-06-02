import 'package:flutter/material.dart';
import 'package:frontend/presentation/signup/signup_page.dart';
import '../../core/CommonWidgets/back_arrow.dart';
import '../../core/constants/assets.dart';
import 'login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Assets.assetsImagesFancyBack)),
        ),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [

              const LoginFormWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        // navigate to forgot passwor page
                      },
                      child: const Text("Forgot Password?")),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const Text("Create Account?"))
                ],
              )
            ],
          ),
        )));
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Align(alignment: Alignment.centerLeft, child: BackArrow()));
  }
}
