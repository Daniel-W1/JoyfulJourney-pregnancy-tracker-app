import 'package:frontend/domain/post/post.dart';
import 'package:frontend/domain/post/post_failure.dart';

class PostListState {
  const PostListState._();

  const factory PostListState.initial() = PostListStateInitial;
  const factory PostListState.loading() = PostListStateLoading;
  const factory PostListState.success({required List<PostDomain> post}) = PostListStateSuccess;
  const factory PostListState.failure({required PostFailure postFailure}) = PostListStateFailure;
  const factory PostListState.addSuccess() = PostListStateAddSuccess;

  PostListState copyWith({
    List<PostDomain>? post,
    PostFailure? postFailure,
  }) {
    if (post != null) {
      return PostListState.success(post: post);
    } else if (postFailure != null) {
      return PostListState.failure(postFailure: postFailure);
    } else {
      return this;
    }
  }
}

class PostListStateInitial extends PostListState {
  const PostListStateInitial() : super._();
}

class PostListStateLoading extends PostListState {
  const PostListStateLoading() : super._();
}

class PostListStateSuccess extends PostListState {
  final List<PostDomain> post;

  const PostListStateSuccess({required this.post}) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostListStateSuccess && runtimeType == other.runtimeType && post == other.post;

  @override
  int get hashCode => runtimeType.hashCode ^ post.hashCode;

  @override
  PostListStateSuccess copyWith({
    PostFailure? postFailure,
    List<PostDomain>? post,
  }) {
    return PostListStateSuccess(
      post: post ?? this.post,
    );
  }
}

class PostListStateFailure extends PostListState {
  final PostFailure postFailure;

  const PostListStateFailure({required this.postFailure}) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostListStateFailure &&
          runtimeType == other.runtimeType &&
          postFailure == other.postFailure;

  @override
  int get hashCode => runtimeType.hashCode ^ postFailure.hashCode;

  @override
  PostListStateFailure copyWith({
    List<PostDomain>? post,
    PostFailure? postFailure,
  }) {
    return PostListStateFailure(
      postFailure: postFailure ?? this.postFailure,
    );
  }
}

class PostListStateAddSuccess extends PostListState {
  const PostListStateAddSuccess() : super._();
}
