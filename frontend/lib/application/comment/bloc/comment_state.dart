import 'package:frontend/domain/comment/comment.dart';

class CommentState {
  const CommentState._();

  const factory CommentState.initial() = CommentStateInitial;
  const factory CommentState.loading() = CommentStateLoading;
  const factory CommentState.success(CommentDomain comment) = CommentStateSuccess;
  const factory CommentState.successMultiple(List<CommentDomain> comments) =
      CommentStateSuccessMultiple;
  const factory CommentState.failure(CommentFailure failure) = CommentStateFailure;
  const factory CommentState.deleted() = CommentStateDeleted;
}

class CommentStateInitial extends CommentState {
  const CommentStateInitial() : super._();
}

class CommentStateLoading extends CommentState {
  const CommentStateLoading() : super._();
}

class CommentStateSuccess extends CommentState {
  final CommentDomain comment;

  const CommentStateSuccess(this.comment) : super._();
}

class CommentStateSuccessMultiple extends CommentState {
  final List<CommentDomain> comments;

  const CommentStateSuccessMultiple(this.comments) : super._();
}

class CommentStateFailure extends CommentState {
  final CommentFailure failure;

  const CommentStateFailure(this.failure) : super._();
}

class CommentStateDeleted extends CommentState {
  const CommentStateDeleted() : super._();
}