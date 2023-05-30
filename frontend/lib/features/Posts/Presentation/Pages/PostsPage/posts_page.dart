import 'package:flutter/material.dart';
import 'package:tips/core/constants/color.dart';

import 'body/posts_body.dart';

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
          return const PostDialogBody();
        });
  }
}

class PostDialogBody extends StatelessWidget {
  const PostDialogBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 194, 194, 194)),
        height: 150,
        child: const TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            hintText: "Write Your Post Here",
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor, foregroundColor: Colors.white),
          child: const Text("Post"),
        )
      ],
    );
  }
}
