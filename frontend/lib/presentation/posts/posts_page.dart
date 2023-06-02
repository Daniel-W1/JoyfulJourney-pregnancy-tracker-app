import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_events.dart';
import 'package:frontend/domain/post/post.dart';
import 'package:frontend/presentation/posts/components/createPostForm.dart';

import '../../application/post/post_list/bloc/post_list_bloc.dart';
import 'components/posts_body.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            addPostDialog(context);
          },
          child: const Text(
            "+",
            style: TextStyle(fontSize: 20),
          )),
      body: const PostsBody(),
    );
  }

  Future<dynamic> addPostDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return CreatePostForm(onCreate: (body) {
            PostForm postForm = PostForm(body: body, comments: [], likes: []);
            BlocProvider.of<PostListBloc>(context).add(PostListEventAddPost(postForm));
          },);
        });
  }
}

