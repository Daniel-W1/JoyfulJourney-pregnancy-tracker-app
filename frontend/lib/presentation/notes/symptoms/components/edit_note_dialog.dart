import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/note/bloc/note_event.dart';
import 'package:frontend/application/note/bloc/note_bloc.dart';
import '../../../../domain/note/note_form.dart';

class EditNoteDialog extends StatelessWidget {
  final TextEditingController _titleController;
  final TextEditingController _bodyController;

  final String NoteId;

  EditNoteDialog({
    Key? key,
    required String initialTitle,
    required String initialBody,
    required this.NoteId,
  })  : _titleController = TextEditingController(text: initialTitle),
        _bodyController = TextEditingController(text: initialBody),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final NoteBloc noteBloc = BlocProvider.of<NoteBloc>(context);

    return AlertDialog(
      title: Text('Edit Note'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 80,
              child: TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              child: TextField(
                controller: _bodyController,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Body',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            // TODO: Implement cancel logic here
            Navigator.pop(context); // Close the dialog
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            NoteForm noteForm = NoteForm(
              title: _titleController.text,
              body: _bodyController.text,
            );

            print("Form here");
            print(noteForm.body);
            noteBloc.add(NoteEventUpdate(noteForm, NoteId));

            Navigator.pop(context); // Close the dialog
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: Text('Update'),
        ),
        ElevatedButton(
          onPressed: () {
            noteBloc.add(NoteEventDelete(NoteId));
            Navigator.pop(context); // Close the dialog
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 175, 76, 76),
          ),
          child: Text('Delete'),
        ),
      ],
    );
  }
}
