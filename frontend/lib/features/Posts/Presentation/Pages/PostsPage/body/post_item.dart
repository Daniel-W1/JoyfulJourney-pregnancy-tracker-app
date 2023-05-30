import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';
import '../../CommentsPage/comments_page.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(Assets.assetsImagesWomanProfile),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dianna",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: theme.colorScheme.onSecondary),
                  ),
                  const Text(
                    "@_dianna · 1 hour ago",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          Text(
            "To be pregnant is to be vitally alive, thoroughly woman, and distressingly inhabited. Soul and spirit are stretched - along with body - making pregnancy a time of transition, growth, and profound beginnings",
            style: TextStyle(color: theme.colorScheme.onSecondary),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CommentsPage()));
                    },
                    icon: const Icon(Icons.comment),
                  ),
                  const Text(
                    "Comments (8)",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      Assets.assetsImagesFavorite,
                      scale: 2,
                    ),
                  ),
                  const Text(
                    "Likes (8)",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
