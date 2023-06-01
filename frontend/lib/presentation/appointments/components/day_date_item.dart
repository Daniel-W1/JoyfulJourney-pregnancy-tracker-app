import 'package:flutter/material.dart';

import '../../core/utils/hex_color.dart';

class DayDateItem extends StatelessWidget {
  const DayDateItem({
    super.key,
    this.backColor,
  });

  final Color? backColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: backColor ?? HexColor("#D9D9D9"),
            borderRadius: BorderRadius.circular(15)),
        height: 64,
        width: 55,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "S",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: (backColor == null) ? Colors.black : Colors.white),
            ),
            Text("3",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: (backColor == null) ? Colors.black : Colors.white))
          ],
        ),
      ),
    );
  }
}
