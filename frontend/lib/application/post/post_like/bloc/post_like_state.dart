import 'package:frontend/domain/post/post.dart';
import 'package:frontend/domain/post/post_failure.dart';

class PostLikeState {
  const PostLikeState._();

  const factory PostLikeState.initial() = PostLikeStateInitial;
  const factory PostLikeState.loading() = PostLikeStateLoading;
  const factory PostLikeState.success({required PostDomain post}) = PostLikeStateSuccess;
  const factory PostLikeState.failure({required Postfailure postFailure}) = PostLikeStateFailure;
}

class PostLikeStateInitial extends PostLikeState {
  const PostLikeStateInitial() : super._();
}

class PostLikeStateLoading extends PostLikeState {
  const PostLikeStateLoading() : super._();
}

class PostLikeStateSuccess extends PostLikeState {
  final PostDomain post;

  const PostLikeStateSuccess({required this.post}) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostLikeStateSuccess && runtimeType == other.runtimeType && post == other.post;

  @override
  int get hashCode => runtimeType.hashCode ^ post.hashCode;
}

class PostLikeStateFailure extends PostLikeState {
  final Postfailure postFailure;

  const PostLikeStateFailure({required this.postFailure}) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostLikeStateFailure &&
          runtimeType == other.runtimeType &&
          postFailure == other.postFailure;

  @override
  int get hashCode => runtimeType.hashCode ^ postFailure.hashCode;
}