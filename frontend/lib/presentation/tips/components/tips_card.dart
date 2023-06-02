import 'package:flutter/material.dart';
import 'package:frontend/presentation/core/Themes/light_theme.dart';

import '../../core/utils/hex_color.dart';

class TipcCard extends StatelessWidget {
  const TipcCard({
    super.key,
    required this.size,
    required this.imgPath,
    required this.text,
    required this.onPressed,
    required this.id,
  });

  final Size size;
  final String imgPath;
  final String text;
  final VoidCallback onPressed;
  final String id;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = LightTheme().getThemeData;
    return Padding(
      padding: const EdgeInsets.all(11),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          height: 144,
          width: size.width,
          decoration: BoxDecoration(
              color: themeData.colorScheme.secondary,
              boxShadow: [
                BoxShadow(
                    color: themeData.colorScheme.shadow,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: const Offset(0, 5))
              ],
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: HexColor("#E5CECE"),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width / 4,
                child: Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: HexColor("#AD4328")),
                ),
              ),
              Hero(
                tag: id,
                child: Image.asset(
                  imgPath,
                  height: 118,
                  width: 156,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
