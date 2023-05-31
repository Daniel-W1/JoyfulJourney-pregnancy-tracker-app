import 'package:flutter/material.dart';
import '../../../../../../core/constants/assets.dart';

class AddAppointmentAppBar extends StatelessWidget {
  const AddAppointmentAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        // SizedBox(
        //   height: 25,
        // ),
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
          "Back",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSecondary),
        )
      ]),
    ));
  }
}
