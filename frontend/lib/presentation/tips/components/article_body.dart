import 'package:flutter/material.dart';
import 'package:frontend/presentation/core/Themes/light_theme.dart';

import '../../core/constants/assets.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({
    super.key,
    required this.smallTxtStyle,
    required this.title,
    required this.body,
  });

  final TextStyle smallTxtStyle;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = LightTheme().getThemeData;
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MEDIA",
                  style: smallTxtStyle,
                ),
                Text(
                  "17 days ago",
                  style: smallTxtStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: theme.colorScheme.onSecondary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              child: Text(
                body,
                style:
                    TextStyle(fontSize: 13, color: theme.colorScheme.onSecondary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
