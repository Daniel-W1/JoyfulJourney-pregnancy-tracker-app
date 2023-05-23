import 'package:frontend/domain/note/note_body_domain.dart';
import 'package:frontend/domain/note/note_title_domain.dart';
import 'package:frontend/domain/note/note_user_id_domain.dart';

class NoteDomainValidator {
  String? titleValidator(String? value) {
    try {
      Notetitle(notetitle: value!);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? bodyValidator(String? value) {
    try {
      Notebody(notebody: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? useridValidator(String value) {
    try {
      Noteuserid(user_id: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }
}
