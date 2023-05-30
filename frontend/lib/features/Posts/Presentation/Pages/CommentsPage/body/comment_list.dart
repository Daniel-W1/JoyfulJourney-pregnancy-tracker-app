import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';

class ComentList extends StatelessWidget {
  const ComentList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (context, index) => const CommentItem(),
    );
  }
}

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(Assets.assetsImagesWomanProfile),
                radius: 15,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Rachel",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: theme.colorScheme.onSecondary),
                      ),
                      const Text(
                        "@_rich",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const Text(
                    "Reply to @_dianna",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          Text(
            "Very nice of you to share this with us.",
            style: TextStyle(color: theme.colorScheme.onSecondary),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
