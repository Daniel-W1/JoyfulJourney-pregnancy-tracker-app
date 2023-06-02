import 'package:flutter/material.dart';

import '../../core/constants/assets.dart';

class AddAppointmentAppBar extends StatelessWidget {
  const AddAppointmentAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 27),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            Assets.assetsImagesArrow,
            width: 30,
            height: 30,
          ),
        ),
        SizedBox(width: 20),
        Text(
          "Back",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        )
      ]),
    ));
  }
}
