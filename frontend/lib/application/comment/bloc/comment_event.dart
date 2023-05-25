import 'package:frontend/domain/comment/comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_event.freezed.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.getCommentsForPost(String postId) =
      CommentEventGetCommentsForPost;
  const factory CommentEvent.getComments() = CommentEventGetComments;
  const factory CommentEvent.getUserComments(String userid) =
      CommentEventGetUserComments;
  const factory CommentEvent.addComment(CommentForm commentForm) =
      CommentEventAddComment;
  const factory CommentEvent.updateComment(CommentForm commentForm, String commentId) =
      CommentEventUpdateComment;
  const factory CommentEvent.deleteComment(String commentId) =
      CommentEventDeleteComment;
}