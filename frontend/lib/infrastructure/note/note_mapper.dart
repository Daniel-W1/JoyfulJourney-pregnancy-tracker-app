import 'package:frontend/domain/note/note_body_domain.dart';
import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/note_title_domain.dart';
import 'package:frontend/domain/note/note_user_id_domain.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';

extension NoteMapper on NoteDto {
  NoteDomain toNote() {
    return NoteDomain(
      body: Notebody(notebody: body),
      title: Notetitle(notetitle: title),
      user_id: Noteuserid(user_id: user_id),
    );
  }
}
