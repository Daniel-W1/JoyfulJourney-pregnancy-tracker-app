import 'package:flutter/material.dart';
import 'package:frontend/presentation/login/login_page.dart';
import '../../../../../../core/CommonWidgets/back_arrow.dart';
import '../../../../../../core/constants/assets.dart';
import 'signup_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage(Assets.assetsImagesFancyBack)),
      ),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const AppBar(),
              const SignUpForm(),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text("Have an account, Sign in?"))
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(alignment: Alignment.centerLeft, child: BackArrow()),
    );
  }
}
