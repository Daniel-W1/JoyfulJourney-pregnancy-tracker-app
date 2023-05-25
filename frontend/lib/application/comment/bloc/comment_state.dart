import 'package:frontend/domain/comment/comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_state.freezed.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = CommentStateInitial;
  const factory CommentState.loading() = CommentStateLoading;
  const factory CommentState.success({required CommentDomain comment}) = CommentStateSuccess;
  const factory CommentState.successMultiple(
      {required List<CommentDomain> comments}) = CommentStateSuccessMultiple;
  const factory CommentState.failure({required Commentfailure failure}) =
      CommentStateFailure;
  const factory CommentState.deleted() = CommentStateDeleted;
}
