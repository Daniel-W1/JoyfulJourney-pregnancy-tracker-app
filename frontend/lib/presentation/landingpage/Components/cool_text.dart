import 'package:flutter/material.dart';

class CoolText extends StatelessWidget {
  const CoolText({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text:
              const TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(
                text: "How cool!!\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
            TextSpan(
                text: "You are now 3 months pregnant.",
                style: TextStyle(fontSize: 20))
          ]),
        ),
      ),
    );
  }
}
