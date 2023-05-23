import 'package:frontend/domain/post/post_author_domain.dart';
import 'package:frontend/domain/post/post_body_domain.dart';
import 'package:frontend/domain/post/post_comment_domain.dart';
import 'package:frontend/domain/post/post_likes_domain.dart';

class PostValidator {
  String? authorValidator(String? value) {
    try {
      PostAuthorDomain(name: value!);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? bodyValidator(String? value) {
    try {
      PostBodyDomain(postbody: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? likesValidator(List<String> value) {
    try {
      PostLikesDomain(user_id: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? commentValidator(List<String> value) {
    try {
      PostCommentDomain(user_id: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }
}
