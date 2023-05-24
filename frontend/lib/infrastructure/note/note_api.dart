import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';
import 'package:frontend/infrastructure/note/note_form_dto.dart';

import '../../util/joyful_http_client.dart';

class NoteAPI {
  JoyfulHttpClient _customHttpClient = JoyfulHttpClient();

  Future<NoteDto> createNote(NoteFormDto noteFormDto) async {
    var note = await _customHttpClient.post("note",
        body: json.encode(noteFormDto.toJson()));

    if (note.statusCode == 201) {
      return NoteDto.fromJson(jsonDecode(note.body));
    } else {
      throw Exception("Failed to create note"); //TODO: handle the exceptions
    }
  }
}
