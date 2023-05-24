import 'package:frontend/domain/comment/comment_author_domain.dart';
import 'package:frontend/domain/comment/comment_body_domain.dart';
import 'package:frontend/domain/comment/post_id_domain.dart';

class CommentValidator {
  String? authorValidator(String? value) {
    try {
      CommentAuthorDomain(name: value!);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? bodyValidator(String? value) {
    try {
      CommentBody(commentbody: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? PostIdValidator(String value) {
    try {
      Postid(user_id: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }
}
