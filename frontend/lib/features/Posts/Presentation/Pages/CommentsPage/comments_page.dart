import 'package:flutter/material.dart';

import 'body/comments_body.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      body: CommentsBody(),
    );
  }
}
