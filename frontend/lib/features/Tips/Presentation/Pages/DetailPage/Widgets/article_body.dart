import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({
    super.key,
    required this.smallTxtStyle,
  });

  final TextStyle smallTxtStyle;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
              "Five exercises to stay in shape. ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: theme.colorScheme.onSecondary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "This is the second part of the SMM starter pack series of articles. If you made it this far, you must be willing to learn about promoting business through social media. ",
              style:
                  TextStyle(fontSize: 13, color: theme.colorScheme.onSecondary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                        radius: 17,
                        backgroundImage:
                            AssetImage(Assets.assetsImagesWomanProfile)),
                    Text(
                      "Patricia Kemp",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.blue),
                    onPressed: () {},
                    child: const Text("Read more 🡢"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
