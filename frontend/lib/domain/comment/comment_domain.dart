import 'package:frontend/domain/comment/comment_author_domain.dart';
import 'package:frontend/domain/comment/comment_body_domain.dart';
import 'package:frontend/domain/comment/post_id_domain.dart';

class CommentDomain {
  CommentBody body;
  Postid user_id;
  CommentAuthorDomain author;

  CommentDomain({
    required this.body,
    required this.user_id,
    required this.author,
  });

  @override
  String toString() {
    return 'CommentDomain(author: $author body: $body, user_id: $user_id)';
  }

  @override
  List<Object> get props => [body, user_id];
}
