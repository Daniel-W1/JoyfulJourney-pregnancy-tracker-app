import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/post/post.dart';

part 'post_like_state.freezed.dart';

@freezed
class PostLikeState with _$PostLikeState {
  const factory PostLikeState.initial() = PostLikeStateInitial;
  const factory PostLikeState.loading() = PostLikeStateLoading;
  const factory PostLikeState.success({required PostDomain post}) = PostLikeStateSuccess;
  const factory PostLikeState.failure({required Postfailure postFailure}) =
      PostLikeStateFailure;
}
