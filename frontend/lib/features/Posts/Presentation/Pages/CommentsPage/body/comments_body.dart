import 'package:flutter/material.dart';
import 'package:tips/features/Posts/Presentation/Pages/CommentsPage/body/write_comment.dart';

import '../../../../../../core/constants/assets.dart';
import '../../../../../../core/constants/color.dart';
import 'comment_list.dart';

class CommentsBody extends StatelessWidget {
  const CommentsBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CommentsAppBar(
                  size: size,
                ),
                PostItem(
                  size: size,
                ),
                //comments text and icon
                const CommentsText(),
                //comments list
                const ComentList()
              ],
            ),
          ),

          // write a comment here

          WriteAComment(size: size),
        ],
      ),
    );
  }
}

class CommentsText extends StatelessWidget {
  const CommentsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          const Icon(Icons.messenger_outline_sharp),
          Text(
            "Comments",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSecondary),
          ),
        ],
      ),
    );
  }
}

class CommentsAppBar extends StatelessWidget {
  const CommentsAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: size.width,
      decoration: BoxDecoration(color: kPrimaryColor),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          const Text(
            "Comments",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(Assets.assetsImagesWomanProfile),
          ),
        ],
      )),
    );
  }
}

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
                    onPressed: () {},
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
