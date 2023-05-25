import 'dart:convert';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';

import 'note_dto.dart';
import 'note_form_dto.dart';


class NoteAPI {
  JJHttpClient _customHttpClient = JJHttpClient();

  Future<NoteDto> createNote(NoteFormDto noteFormDto) async {
    var note = await _customHttpClient.post("notes",
        body: json.encode(noteFormDto.toJson()));

    if (note.statusCode == 201) {
      return NoteDto.fromJson(jsonDecode(note.body));
    } else {
      throw JJHttpException(
          json.decode(note.body)['message'] ?? "Unknown error",
          note.statusCode);
    }
  }

  Future<NoteDto> updateNote(NoteFormDto noteFormDto, String noteId) async {
    var updatedNote = await _customHttpClient.put("notes/$noteId",
        body: json.encode(noteFormDto.toJson()));

    if (updatedNote.statusCode == 201) {
      return NoteDto.fromJson(jsonDecode(updatedNote.body));
    } else {
      throw JJHttpException(
          json.decode(updatedNote.body)['message'] ?? "Unknown error",
          updatedNote.statusCode);
    }
  }

  Future<void> deleteNote(String noteId) async {
    var response = await _customHttpClient.delete("notes/$noteId");

    if (response.statusCode != 204) {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<NoteDto>> getNotesForUser(String user_id) async {
    var notes = await _customHttpClient.get("notes/user/$user_id");

    if (notes.statusCode == 201) {
      return (jsonDecode(notes.body) as List)
          .map((e) => NoteDto.fromJson(e))
          .toList();
    } else {
      throw JJHttpException(
          json.decode(notes.body)['message'] ?? "Unknown error",
          notes.statusCode);
    }
  }
}
