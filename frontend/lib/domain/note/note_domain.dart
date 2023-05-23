import 'package:frontend/domain/note/note_body_domain.dart';
import 'package:frontend/domain/note/note_title_domain.dart';
import 'package:frontend/domain/note/note_user_id_domain.dart';

class NoteDomain {
  // it has title, body, user_id
  // it has a constructor that takes title, body, user_id
  // it has a toString method
  // it has a props method

  Notebody body;
  Notetitle title;
  Noteuserid user_id;

  NoteDomain({
    required this.body,
    required this.title,
    required this.user_id,
  });

  @override
  String toString() {
    return 'NoteDomain(body: $body, title: $title, user_id: $user_id)';
  }

  @override
  List<Object> get props => [body, title, user_id];
}
