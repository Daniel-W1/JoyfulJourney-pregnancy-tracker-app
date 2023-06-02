import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_events.dart';
import 'package:frontend/application/profile/bloc/profile_bloc.dart';
import 'package:frontend/application/profile/bloc/profile_event.dart';
import 'package:frontend/domain/post/post.dart';
import 'package:frontend/domain/profile/profile.dart';
import 'package:frontend/local_data/shared_preferences/jj_shared_preferences_service.dart';
import 'package:frontend/presentation/posts/components/createPostForm.dart';

import '../../../application/profile/bloc/profile_state.dart';
import '../../core/constants/assets.dart';
import '../comments/comments_page.dart';

class PostItem extends StatefulWidget {
  const PostItem({super.key, required this.size, required this.post});

  final Size size;
  final PostDomain post;
  

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  String? profileId = '';
  @override
  void initState() {
    SharedPreferenceService service = SharedPreferenceService();
    
    service.getProfileId().then((value) {
      setState(() {
        profileId = value;
        print("set the value of profileId");
        print(profileId);
        print(widget.post.author);
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    
    
    return Container(
      width: widget.size.width,
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
                        .add(ProfileEventGetProfile(profileId: widget.post.author));
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
                              "@${state.profile.userName}",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    );
                  } else if (state is ProfileStateLoading) {
                    return Text('Loading but loading');
                  } else if (state is ProfileStateFailure) {
                    return Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage(Assets.assetsImagesFancyBack),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Anonymous",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: theme.colorScheme.onSecondary),
                            ),
                            Text(
                              "@anon",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    );
                  } else {
                    BlocProvider.of<ProfileBloc>(context)
                        .add(ProfileEventGetProfile(profileId: widget.post.author));
                    return Text(state.toString());
                  }
                },
              ),
              widget.post.author ==  profileId ? 
              
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
                                      likes: widget.post.likes,
                                      comments: widget.post.comments);
                                  BlocProvider.of<PostListBloc>(context).add(
                                      PostListEventUpdatePost(
                                          postForm, widget.post.id!));
                                },
                                initialBody: widget.post.body,
                                mode: 'Update',
                                postId: widget.post.id!,
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
              widget.post.body,
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
                                    post: widget.post,
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
                          "Comments (${widget.post.comments.length})",
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
                    "Likes (${widget.post.likes.length})",
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
