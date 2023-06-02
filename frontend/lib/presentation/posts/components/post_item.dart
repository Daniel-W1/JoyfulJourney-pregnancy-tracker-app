import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_events.dart';
import 'package:frontend/application/profile/bloc/profile_bloc.dart';
import 'package:frontend/application/profile/bloc/profile_event.dart';
import 'package:frontend/domain/post/post.dart';
import 'package:frontend/domain/profile/profile.dart';
import 'package:frontend/presentation/posts/components/createPostForm.dart';

import '../../../application/profile/bloc/profile_state.dart';
import '../../core/constants/assets.dart';
import '../comments/comments_page.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.size, required this.post});

  final Size size;
  final PostDomain post;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocConsumer<ProfileBloc, ProfileState>(
                listener: (context, state) {
                  if (state is ProfileStateInitial) {
                    print("hah hah hah");
                    BlocProvider.of<ProfileBloc>(context)
                        .add(ProfileEventGetProfile(profileId: post.author));
                  }
                },
                builder: (context, state) {
                  if (state is ProfileStateSuccess) {
                    return Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage(Assets.assetsImagesWomanProfile),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${state.profile.firstName} ${state.profile.lastName}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: theme.colorScheme.onSecondary),
                            ),
                            Text(
                              "@_${state.profile.userName}",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    );
                  } else if (state is ProfileStateLoading) {
                    return Text('Loading but loading');
                  } else if (state is ProfileStateFailure) {
                    return Text('Failure... you should die');
                  } else {
                    BlocProvider.of<ProfileBloc>(context)
                        .add(ProfileEventGetProfile(profileId: post.author));
                    return Text(state.toString());
                  }
                },
              ),
              post.author == "644ec9e0da3f7fc3a4c30a2a" ?
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.edit),
                      color: Colors.grey,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return CreatePostForm(
                                onCreate: (body) {
                                  PostForm postForm = PostForm(
                                      body: body,
                                      likes: post.likes,
                                      comments: post.comments);
                                  BlocProvider.of<PostListBloc>(context).add(
                                      PostListEventUpdatePost(
                                          postForm, post.id!));
                                },
                                initialBody: post.body,
                                mode: 'Update',
                                postId: post.id!,
                              );
                            });
                      }),
                  
                ],
              ) : Container(),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              post.body,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: theme.colorScheme.onSecondary,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CommentsPage(
                                    post: post,
                                    profile: state is ProfileStateSuccess
                                        ? state.profile as ProfileDomain
                                        : ProfileDomain(
                                            userName: '',
                                            firstName: "",
                                            lastName: '',
                                            profilePicture: '',
                                            bio: '',
                                            followers: [],
                                            following: [],
                                            posts: [],
                                            comments: [],
                                            socialMedia: []),
                                  )));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.comment),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Comments (${post.comments.length})",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  );
                },
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
