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

  CommentState copyWith({
    List<CommentDomain>? comments,
    CommentFailure? failure,
    CommentDomain? comment,
  }) {
    if (comments != null) {
      return CommentState.successMultiple(comments);
    } else if (failure != null) {
      return CommentState.failure(failure);
    } else if (comment != null) {
      return CommentState.success(comment);
    } else {
      return this;
    }
  }
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentStateSuccess &&
          runtimeType == other.runtimeType &&
          comment == other.comment;

  @override
  int get hashCode => runtimeType.hashCode ^ comment.hashCode;
}

class CommentStateSuccessMultiple extends CommentState {
  final List<CommentDomain> comments;

  const CommentStateSuccessMultiple(this.comments) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentStateSuccessMultiple &&
          runtimeType == other.runtimeType &&
          comments == other.comments;

  @override
  int get hashCode => runtimeType.hashCode ^ comments.hashCode;
}

class CommentStateFailure extends CommentState {
  final CommentFailure failure;

  const CommentStateFailure(this.failure) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentStateFailure &&
          runtimeType == other.runtimeType &&
          failure == other.failure;

  @override
  int get hashCode => runtimeType.hashCode ^ failure.hashCode;
}

class CommentStateDeleted extends CommentState {
  const CommentStateDeleted() : super._();
}