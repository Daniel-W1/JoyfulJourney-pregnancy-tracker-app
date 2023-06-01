import 'package:flutter/material.dart';

class TimeLabel extends StatelessWidget {
  const TimeLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "time label",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSecondary),
        ),
      ),
    );
  }
}
