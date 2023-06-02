import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/note/bloc/note_event.dart';
import 'package:go_router/go_router.dart';

import '../../../../application/note/bloc/note_bloc.dart';
import '../../../../application/note/bloc/note_state.dart';
import '../../../../domain/note/note_form.dart';
import '../../../core/utils/hex_color.dart';

class BookTextFieldButton extends StatefulWidget {
  const BookTextFieldButton({
    Key? key,
  }) : super(key: key);

  @override
  _BookTextFieldButtonState createState() => _BookTextFieldButtonState();
}

class _BookTextFieldButtonState extends State<BookTextFieldButton> {
  late TextEditingController _bodyController;
  late TextEditingController _titleController;

  @override
  void initState() {
    super.initState();
    _bodyController = TextEditingController();
    _titleController = TextEditingController();
  }

  @override
  void dispose() {
    _bodyController.dispose();
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final NoteBloc noteBloc = BlocProvider.of<NoteBloc>(context);

    return SingleChildScrollView(
      child: BlocListener<NoteBloc, NoteState>(
        listener: (context, state) {
         if (state is NoteStateSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Note added'),
              ),
            );
            Navigator.of(context).pop();
            
          } else if (state is NoteStateFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Something went wrong'),
              ),
            );
          }
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor("#DDDDDD"),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Body',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor("#DDDDDD"),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _bodyController,
                      decoration: const InputDecoration(
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 228, 194, 206),
              ),
              child: IconButton(
                // increase the size of the button

                onPressed: () {
                  // Get the Note title and body from the TextField
                  final NoteTitle = _titleController.text;
                  final NoteBody = _bodyController.text;

                  NoteForm noteForm = NoteForm(
                    title: NoteTitle,
                    body: NoteBody,
                  );

                  print(noteForm.body);
                  print(noteForm.title);

                  noteBloc.add(
                    NoteEventAdd(noteForm),
                  );
                  // Access NoteBloc here and perform necessary operations
                },
                icon: const Icon(Icons.send),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
