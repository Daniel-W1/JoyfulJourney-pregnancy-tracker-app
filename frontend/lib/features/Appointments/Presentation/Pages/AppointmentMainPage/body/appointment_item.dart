import 'package:flutter/material.dart';

import '../../../../../../core/utils/hex_color.dart';

class AppointmentItem extends StatelessWidget {
  const AppointmentItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: HexColor("#D83A3A"),
            child: const Text(
              "4",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            width: size.width / 1.3,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: HexColor("#DDDDDD"),
                borderRadius: BorderRadius.circular(20)),
            child: const Text(
                "Has maiorum habemus detraxit at. Timeam fabulas   splendide et his.Usu nullam dolorum quaestio ei, ent..."),
          )
        ],
      ),
    );
  }
}
