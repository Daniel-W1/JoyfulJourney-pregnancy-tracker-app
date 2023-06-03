import 'dart:convert';
import 'package:frontend/infrastructure/note/note_form_mapper.dart';
import 'package:frontend/local_data/shared_preferences/jj_shared_preferences_service.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';

import 'note_dto.dart';
import 'note_form_dto.dart';

class NoteAPI {
  JJHttpClient _customHttpClient = JJHttpClient();
  SharedPreferenceService _sharedPreferenceService = SharedPreferenceService();

  Future<NoteDto> createNote(NoteFormDto noteFormDto) async {
    String author = await _sharedPreferenceService.getProfileId() ?? "";

    if (author == "") {
      throw JJHttpException("Not Logged In", 404);
    }

    var note = await _customHttpClient.post("notes",
        body: json.encode(noteFormDto.toAuthoredDto(author).toJson()));

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

    print(updatedNote.statusCode);
    if (updatedNote.statusCode >= 200 && updatedNote.statusCode < 300) {
      return NoteDto.fromJson(jsonDecode(updatedNote.body));
    } else {
      throw JJHttpException(
          json.decode(updatedNote.body)['message'] ?? "Unknown error",
          updatedNote.statusCode);
    }
  }

  Future<void> deleteNote(String noteId) async {
    var response = await _customHttpClient.delete("notes/$noteId");

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<NoteDto>> getNotesForUser(String userId) async {
    var notes = await _customHttpClient.get("notes/user/$userId");
    if (notes.statusCode >= 200 && notes.statusCode < 300) {
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
