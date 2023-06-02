import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/comment/bloc/comment_event.dart';
import 'package:frontend/domain/comment/comment.dart';

import '../../../application/comment/bloc/comment_bloc.dart';
import '../../../application/comment/bloc/comment_state.dart';
import '../../core/constants/color.dart';

class WriteAComment extends StatelessWidget {
  const WriteAComment({super.key, required this.size, required this.postId});

  final Size size;
  final String postId;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Positioned(
      bottom: 0,
      child: BlocListener<CommentBloc, CommentState>(
        listener: (context, state) {
          if (state is CommentStateSuccess){
            BlocProvider.of<CommentBloc>(context).add(CommentEventGetCommentsForPost(postId));
          }
        },
        child: Container(
          height: 60,
          width: size.width,
          padding: const EdgeInsets.all(4),
          color: kPrimaryColor,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Write Your Comment Here",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  BlocProvider.of<CommentBloc>(context)
                      .add(CommentEventAddComment(
                    CommentForm(body: controller.text, postId: postId),
                  ));
                },
                icon: const Icon(Icons.send),
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
