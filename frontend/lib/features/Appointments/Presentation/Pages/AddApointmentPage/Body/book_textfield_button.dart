import 'package:flutter/material.dart';

import '../../../../../../core/utils/hex_color.dart';

class BookTextFieldButton extends StatelessWidget {
  const BookTextFieldButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: HexColor("#DDDDDD")),
        height: 40,
        child: Row(
          children: [
            const Expanded(
                child: TextField(
              decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none),
            )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send))
          ],
        ));
  }
}
