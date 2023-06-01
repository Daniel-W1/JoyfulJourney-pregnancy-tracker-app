import 'package:flutter/material.dart';
import 'package:frontend/presentation/notes/symptoms/components/add_note_body.dart';

import '../../../core/constants/assets.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //  appBar: NotesAppBar(size, context),
      body: AddNoteBody(),
    );
  }

  PreferredSize NotesAppBar(Size size, BuildContext context) {
    return PreferredSize(
        preferredSize: Size(size.width, 50),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 27),
          child: Row(children: [
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                //  Navigator.pop(context);
              },
              child: Image.asset(
                Assets.assetsImagesArrow,
                width: 36,
                height: 36,
              ),
            ),
            const Text(
              "Note",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ]),
        )));
  }
}
