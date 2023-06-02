import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/constants/assets.dart';
import 'components/appointments_body.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appointmentsAppBar(size, context),
      body: const AppointmentsBody(),
    );
  }

  PreferredSize appointmentsAppBar(Size size, BuildContext context) {
    ThemeData theme = Theme.of(context);
    return PreferredSize(
        preferredSize: Size(size.width, 80),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
          child: Row(children: [
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                GoRouter.of(context).go('/landingpage');
              },
              child: Image.asset(
                Assets.assetsImagesArrow,
                width: 30,
                height: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Appointment",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ]),
        )));
  }
}
