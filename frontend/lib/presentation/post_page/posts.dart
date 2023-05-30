import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_events.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_state.dart';
import 'package:frontend/domain/post/post.dart';
import 'package:frontend/presentation/post_page/postcard.dart';

import 'createPostForm.dart';

class PostsPage extends StatefulWidget {
  final PostListBloc postBloc;

  const PostsPage({Key? key, required this.postBloc}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  void initState() {
    super.initState();
    fetchPosts('6474824cebecd37a7abd4cb3');
  }

  Future<void> fetchPosts(String userId) async {
    widget.postBloc.add(PostListEventLoadByAuthor(userId));
  }

  void _showCreatePostForm(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => CreatePostForm(
      onCreate: (body) {
        // Create a new Post instance with the given data
        var post = PostForm(
          body: body,
          comments: [],
          likes: [],
        );
        
        // Dispatch the PostListEventAddPost event with the created post
        context.read<PostListBloc>().add(PostListEventAddPost(post));

        // Close the dialog
        Navigator.of(context).pop();
      },
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostListBloc, PostListState>(
      bloc: widget.postBloc,
      builder: (context, state) {
        if (state is PostListStateInitial) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Posts'),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _showCreatePostForm(context),
              child: Icon(Icons.add),
            ),
          );
        } else if (state is PostListStateSuccess) {
          final posts = state.post;

          return Scaffold(
            appBar: AppBar(
              title: Text('Posts'),
            ),
            body: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return PostCard(
                  description: post.body,
                  likeCount: post.likes.length,
                  commentCount: post.comments.length,
                  // fill the rest with dummy data
                  datePosted: "2021-10-10",
                  title: "username",
                  imageUrl: "https://picsum.photos/200",
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _showCreatePostForm(context),
              child: Icon(Icons.add),
            ),
          );
        } else if (state is PostListStateFailure) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Posts'),
            ),
            body: Center(
              child:
                  Text('Failed to load posts: ${state.postFailure.toString()}'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _showCreatePostForm(context),
              child: Icon(Icons.add),
            ),
          );
        } else {
          return Scaffold();
        }
      },
    );
  }
}
