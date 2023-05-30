import 'package:flutter/material.dart';

import '../../../../../../core/constants/color.dart';

class WriteAComment extends StatelessWidget {
  const WriteAComment({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 50,
        width: size.width,
        padding: const EdgeInsets.all(4),
        color: kPrimaryColor,
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Write Your Comment Here",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
