import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/domain/post/post.dart';

import '../../../application/comment/bloc/comment_bloc.dart';
import '../../../domain/profile/profile_domain.dart';
import '../../../infrastructure/comment/comment_api.dart';
import '../../../infrastructure/comment/comment_repository.dart';
import 'comments_body.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key, required this.post, required this.profile});
  final PostDomain post;
  final ProfileDomain profile;

  @override
  Widget build(BuildContext context) {
    print(post.id!);
    CommentAPI commentApi = CommentAPI();
    CommentRepository commentRepository = CommentRepository(commentApi);
    CommentBloc commentBloc =
        CommentBloc(commentRepositoryInterface: commentRepository);

    return BlocProvider(
      create: (context) => commentBloc,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: CommentsBody(post: post, profile: profile),
      ),
    );
  }
}
