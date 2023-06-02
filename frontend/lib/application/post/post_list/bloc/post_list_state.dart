import 'package:frontend/domain/post/post.dart';
import 'package:frontend/domain/post/post_failure.dart';

class PostListState {
  const PostListState._();

  const factory PostListState.initial() = PostListStateInitial;
  const factory PostListState.loading() = PostListStateLoading;
  const factory PostListState.success({required List<PostDomain> post}) = PostListStateSuccess;
  const factory PostListState.failure({required PostFailure postFailure}) = PostListStateFailure;
  const factory PostListState.addSuccess() = PostListStateAddSuccess;
  const factory PostListState.deleted() = PostListStateDeleted; // New factory constructor

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
  const PostListStateSuccess({required this.post}) : super._();

  final List<PostDomain> post;
}

class PostListStateFailure extends PostListState {
  const PostListStateFailure({required this.postFailure}) : super._();

  final PostFailure postFailure;
}

class PostListStateAddSuccess extends PostListState {
  const PostListStateAddSuccess() : super._();
}

class PostListStateDeleted extends PostListState { // New state class
  const PostListStateDeleted() : super._();
}