
import 'package:frontend/domain/appointment/appointment_form.dart';
import 'package:frontend/domain/comment/comment_form.dart';
import 'package:frontend/infrastructure/appointment/appointment_form_dto.dart';

extension CFmapper on CommentForm {
  CommentForm toDto() {
    return CommentForm(
      description: description,
      post_id: post_id,
      
     
      
    );
  }
}