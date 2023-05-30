import 'package:flutter/material.dart';
import 'package:tips/features/Appointments/Presentation/Pages/AppointmentMainPage/appointments_page.dart';
import 'package:tips/features/Settings/Presentation/Pages/SettingsPage/settings_page.dart';

import 'others_menu.dart';

class OthersBody extends StatelessWidget {
  const OthersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          OthersMenu(
            text: "Appointments",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppointmentsPage(),
                  ));
            },
          ),
          OthersMenu(
            text: "Settings",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
