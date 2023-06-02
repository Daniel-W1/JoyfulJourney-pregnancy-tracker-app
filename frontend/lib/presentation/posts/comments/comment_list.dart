import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/comment/bloc/comment_event.dart';
import 'package:frontend/application/profile/bloc/profile_event.dart';
import 'package:frontend/domain/comment/comment.dart';
import 'package:frontend/infrastructure/profile/profile_api.dart';

import '../../../application/comment/bloc/comment_bloc.dart';
import '../../../application/comment/bloc/comment_state.dart';
import '../../../application/profile/bloc/profile_bloc.dart';
import '../../../application/profile/bloc/profile_state.dart';
import '../../../infrastructure/profile/profile_repository.dart';
import '../../core/constants/assets.dart';

class ComentList extends StatefulWidget {
  const ComentList({super.key, required this.postId});

  final String postId;

  @override
  State<ComentList> createState() => _ComentListState();
}

class _ComentListState extends State<ComentList> {
  @override
  void initState() {
    BlocProvider.of<CommentBloc>(context)
        .add(CommentEventGetCommentsForPost(widget.postId));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(children: [
      BlocConsumer<CommentBloc, CommentState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is CommentStateLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CommentStateSuccessMultiple) {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.comments.length,
              itemBuilder: (context, index) => BlocProvider(
                create: (context) => ProfileBloc(
                    profileRepositoryInterface:
                        ProfileRepository(ProfileApi())),
                child: CommentItem(
                  comment: state.comments[index],
                ),
              ),
            );
          } else if (state is CommentStateFailure) {
            return Center(
              child: Text('Something went wrong'),
            );
          }
          return Container();
        },
      ),
      SizedBox(
        height: 60,
      )
    ]);
  }
}

class CommentItem extends StatelessWidget {
  const CommentItem({super.key, required this.comment});

  final CommentDomain comment;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state is ProfileStateSuccess) {
                return Row(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage(Assets.assetsImagesWomanProfile),
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
                            "${state.profile.firstName} ${state.profile.lastName}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: theme.colorScheme.onSecondary),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "@${state.profile.userName}",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              );
              } else if (state is ProfileStateFailure) {
                return Center(
                  child: Text('Something went wrong'),
                );
              } else if (state is ProfileStateLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ProfileStateInitial) {
                BlocProvider.of<ProfileBloc>(context)
                    .add(ProfileEventGetProfile(profileId: comment.author));
              }
              return Container();
            },
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "${comment.body}",
            textAlign: TextAlign.start,
            style: TextStyle(color: theme.colorScheme.onSecondary),
          ),
          SizedBox(
            height: 5,
          ),
          const Divider(),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
