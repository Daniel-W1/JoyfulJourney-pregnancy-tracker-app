import 'package:flutter/material.dart';
import 'package:tips/core/constants/assets.dart';
import 'package:tips/core/constants/color.dart';
import 'package:tips/features/Posts/Presentation/Pages/PostsPage/body/post_item.dart';

class PostsBody extends StatelessWidget {
  const PostsBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        // app bar
        PostsAppBar(size: size),
        Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) => PostItem(size: size)))
      ],
    );
  }
}

class PostsAppBar extends StatelessWidget {
  const PostsAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      height: 70,
      width: size.width,
      decoration: BoxDecoration(color: kPrimaryColor),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.white,
          ),
          const Text(
            "Posts",
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
