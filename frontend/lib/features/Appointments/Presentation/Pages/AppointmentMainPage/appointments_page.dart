import 'package:flutter/material.dart';

import '../../../../../core/constants/assets.dart';
import 'body/appointments_body.dart';

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
        preferredSize: Size(size.width, 50),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 27),
          child: Row(children: [
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                Assets.assetsImagesArrow,
                width: 36,
                height: 36,
              ),
            ),
            Text(
              "Appointment",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSecondary),
            )
          ]),
        )));
  }
}
