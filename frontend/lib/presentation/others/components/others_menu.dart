import 'package:flutter/material.dart';

import 'package:frontend/presentation/core/constants/color.dart';

class OthersMenu extends StatelessWidget {
  const OthersMenu({Key? key, required this.text, this.press})
      : super(key: key);

  final String text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: kPrimaryColor,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: press,
        child: Row(
          children: [
            const SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            )),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
