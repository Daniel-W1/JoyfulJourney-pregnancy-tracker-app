import 'package:flutter/material.dart';
import 'package:frontend/presentation/notes/symptoms/components/notes_body.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/assets.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    print("build called");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NotesAppBar(size, context),
      body: NoteBody(),
    );
  }

  PreferredSize NotesAppBar(Size size, BuildContext context) {
    return PreferredSize(
      preferredSize: Size(size.width, 80),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      GoRouter.of(context).go('/landingpage');
                    },
                    child: Image.asset(
                      Assets.assetsImagesArrow,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Notes",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
