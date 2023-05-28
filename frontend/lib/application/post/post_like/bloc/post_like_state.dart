import 'package:frontend/domain/post/post.dart';

abstract class PostLikeState {
  const PostLikeState._();
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
      other is PostLikeStateSuccess &&
          runtimeType == other.runtimeType &&
          post == other.post;

  @override
  int get hashCode => runtimeType.hashCode ^ post.hashCode;

  PostLikeStateSuccess copyWith({PostDomain? post}) {
    return PostLikeStateSuccess(post: post ?? this.post);
  }
}

class PostLikeStateFailure extends PostLikeState {
  final PostFailure postFailure;

  const PostLikeStateFailure({required this.postFailure}) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostLikeStateFailure &&
          runtimeType == other.runtimeType &&
          postFailure == other.postFailure;

  @override
  int get hashCode => runtimeType.hashCode ^ postFailure.hashCode;

  PostLikeStateFailure copyWith({PostFailure? postFailure}) {
    return PostLikeStateFailure(postFailure: postFailure ?? this.postFailure);
  }
}