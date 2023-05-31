import 'package:flutter/material.dart';

import '../constants/assets.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        Navigator.pop(context);
      },
      child: Image.asset(
        Assets.assetsImagesArrow,
        width: 36,
        height: 36,
      ),
    );
  }
}
