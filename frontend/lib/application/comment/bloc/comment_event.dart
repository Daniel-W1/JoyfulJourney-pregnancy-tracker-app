import 'package:frontend/domain/comment/comment.dart';

class CommentEvent {
  const CommentEvent._();

  const factory CommentEvent.getCommentsForPost(String postId) = CommentEventGetCommentsForPost;
  const factory CommentEvent.getComments() = CommentEventGetComments;
  const factory CommentEvent.getUserComments(String userid) = CommentEventGetUserComments;
  const factory CommentEvent.addComment(CommentForm commentForm) = CommentEventAddComment;
  const factory CommentEvent.updateComment(CommentForm commentForm, String commentId) =
      CommentEventUpdateComment;
  const factory CommentEvent.deleteComment(String commentId) = CommentEventDeleteComment;

  String get errorMessage {
    if (this is CommentEventGetCommentsForPost) {
      return 'Failed to get comments for post';
    } else if (this is CommentEventGetComments) {
      return 'Failed to get comments';
    } else if (this is CommentEventGetUserComments) {
      return 'Failed to get user comments';
    } else if (this is CommentEventAddComment) {
      return 'Failed to add comment';
    } else if (this is CommentEventUpdateComment) {
      return 'Failed to update comment';
    } else if (this is CommentEventDeleteComment) {
      return 'Failed to delete comment';
    } else {
      return 'Unknown error';
    }
  }
}

class CommentEventGetCommentsForPost extends CommentEvent {
  final String postId;

  const CommentEventGetCommentsForPost(this.postId) : super._();
}

class CommentEventGetComments extends CommentEvent {
  const CommentEventGetComments() : super._();
}

class CommentEventGetUserComments extends CommentEvent {
  final String userid;

  const CommentEventGetUserComments(this.userid) : super._();
}

class CommentEventAddComment extends CommentEvent {
  final CommentForm commentForm;

  const CommentEventAddComment(this.commentForm) : super._();
}

class CommentEventUpdateComment extends CommentEvent {
  final CommentForm commentForm;
  final String commentId;

  const CommentEventUpdateComment(this.commentForm, this.commentId) : super._();
}

class CommentEventDeleteComment extends CommentEvent {
  final String commentId;

  const CommentEventDeleteComment(this.commentId) : super._();
}