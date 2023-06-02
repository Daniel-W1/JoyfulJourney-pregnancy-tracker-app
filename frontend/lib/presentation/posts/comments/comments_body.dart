import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/comment/bloc/comment_bloc.dart';
import 'package:frontend/infrastructure/comment/comment_api.dart';
import 'package:frontend/infrastructure/comment/comment_repository.dart';
import '../../../domain/post/post_domain.dart';
import '../../../domain/profile/profile_domain.dart';
import 'write_comment.dart';

import '../../core/constants/assets.dart';
import '../../core/constants/color.dart';
import 'comment_list.dart';

class CommentsBody extends StatelessWidget {
  const CommentsBody({super.key, required this.post, required this.profile});

  final PostDomain post;
  final ProfileDomain profile;

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
                  post: post,
                  profile: profile,
                ),
                //comments text and icon
                SizedBox(
                  height: 15,
                ),
                const CommentsText(),
                //comments list
                  ComentList(postId: post.id!,),
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
      height: 90,
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
    required this.post,
    required this.profile,
  });

  final Size size;
  final PostDomain post;
  final ProfileDomain profile;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
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
                    "${profile.firstName} ${profile.lastName}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: theme.colorScheme.onSecondary),
                  ),
                  Text(
                    "@${profile.userName}",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "${post.body}",
              style: TextStyle(color: theme.colorScheme.onSecondary),
            ),
          ),
          SizedBox(
            height: 10,
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
                  Text(
                    "Comments (${post.comments.length})",
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
                  Text(
                    "Likes (${post.likes.length})",
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
