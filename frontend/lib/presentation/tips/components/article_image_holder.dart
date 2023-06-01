import 'package:flutter/material.dart';

import '../../core/utils/hex_color.dart';
import 'detail_body.dart';

class ImageHolder extends StatelessWidget {
  const ImageHolder({
    super.key,
    required this.widget,
  });

  final DetailBody widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [HexColor("#F395BA"), HexColor("#FED182")]),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Center(
        child: Hero(
          tag: widget.tipsModel.id,
          child: Image.asset(
            widget.tipsModel.imgPath,
            height: 144,
          ),
        ),
      ),
    );
  }
}
