import 'package:flutter/material.dart';
import 'package:frontend/presentation/notes/symptoms/components/edit_note_dialog.dart';

import '../../../../../../../core/utils/hex_color.dart';

class NoteItem extends StatelessWidget {
  final String title;
  final String body;
  final String NoteId;

  const NoteItem(
      {Key? key, required this.title, required this.body, required this.NoteId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return EditNoteDialog(
              NoteId: this.NoteId,
              initialTitle: title,
              initialBody: body,
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration: BoxDecoration(
            color: HexColor("#DDDDDD"),
            // give border radius
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    body,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
