import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';
import 'package:frontend/infrastructure/note/note_form_dto.dart';

import '../../util/custom_http_client.dart';

class NoteAPI {
  CustomHttpClient _customHttpClient = CustomHttpClient();

  Future<NoteDto> createNote(NoteFormDto noteFormDto) async {
    var answer = await _customHttpClient.post("answers",
        body: json.encode(noteFormDto.toJson()));

    if (answer.statusCode == 201) {
      return NoteDto.fromJson(jsonDecode(answer.body));
    } else {
      throw Exception("Failed to create answer"); //TODO: handle the exceptions
    }
  }
}
