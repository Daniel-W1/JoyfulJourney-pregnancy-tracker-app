import 'dart:convert';

import 'package:flutter/material.dart';

import '../../util/custom_http_exception.dart';
import '../../util/joyful_http_client.dart';
import 'note_dto.dart';
import 'note_form_dto.dart';


class NoteAPI {
  JoyfulHttpClient _customHttpClient = JoyfulHttpClient();

  Future<NoteDto> createNote(NoteFormDto noteFormDto) async {
    var note = await _customHttpClient.post("notes",
        body: json.encode(noteFormDto.toJson()));

    if (note.statusCode == 201) {
      return NoteDto.fromJson(jsonDecode(note.body));
    } else {
      throw CustomHttpException(
          json.decode(note.body)['message'] ?? "Unknown error",
          note.statusCode);
    }
  }

  Future<NoteDto> updateNote(NoteFormDto noteFormDto) async {
    var updatedNote = await _customHttpClient.put("notes",
        body: json.encode(noteFormDto.toJson()));

    if (updatedNote.statusCode == 201) {
      return NoteDto.fromJson(jsonDecode(updatedNote.body));
    } else {
      throw CustomHttpException(
          json.decode(updatedNote.body)['message'] ?? "Unknown error",
          updatedNote.statusCode);
    }
  }

  Future<void> deleteNote() async {
    var response = await _customHttpClient.delete("notes");

    if (response.statusCode != 204) {
      throw CustomHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<NoteDto>> getNotes() async {
    var notes = await _customHttpClient.get("notes");

    if (notes.statusCode == 201) {
      return (jsonDecode(notes.body) as List)
          .map((e) => NoteDto.fromJson(e))
          .toList();
    } else {
      throw CustomHttpException(
          json.decode(notes.body)['message'] ?? "Unknown error",
          notes.statusCode);
    }
  }

  Future<NoteDto> getOneNote(String id) async {
    var note = await _customHttpClient.get("notes/$id");

    if (note.statusCode == 201 && note.body != null) {
      return NoteDto.fromJson(jsonDecode(note.body));
    } else if (note.body == null) {
      throw CustomHttpException("Note not found", note.statusCode);
    } else {
      throw CustomHttpException(
          json.decode(note.body)['message'] ?? "Unknown error",
          note.statusCode);
    }
  }

  Future<List<NoteDto>> getNotesByUser(String user_id) async {
    var notes = await _customHttpClient.get("notes/user/$user_id");

    if (notes.statusCode == 201) {
      return (jsonDecode(notes.body) as List)
          .map((e) => NoteDto.fromJson(e))
          .toList();
    } else {
      throw CustomHttpException(
          json.decode(notes.body)['message'] ?? "Unknown error",
          notes.statusCode);
    }
  }
}
