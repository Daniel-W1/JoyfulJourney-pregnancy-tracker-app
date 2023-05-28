import 'package:frontend/domain/post/post.dart';

abstract class PostCreateState {
  const PostCreateState();
}

class PostCreateEmptyState extends PostCreateState {
  const PostCreateEmptyState() : super();
}

class PostCreateLoadingState extends PostCreateState {
  const PostCreateLoadingState() : super();
}

class PostCreateSuccessState extends PostCreateState {
  const PostCreateSuccessState({required this.post}) : super();

  final PostDomain post;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostCreateSuccessState &&
          runtimeType == other.runtimeType &&
          post == other.post;

  @override
  int get hashCode => runtimeType.hashCode ^ post.hashCode;

  PostCreateSuccessState copyWith({PostDomain? post}) {
    return PostCreateSuccessState(post: post ?? this.post);
  }
}

class PostCreateFailureState extends PostCreateState {
  const PostCreateFailureState({required this.postFailure}) : super();

  final PostFailure postFailure;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostCreateFailureState &&
          runtimeType == other.runtimeType &&
          postFailure == other.postFailure;

  @override
  int get hashCode => runtimeType.hashCode ^ postFailure.hashCode;

  PostCreateFailureState copyWith({PostFailure? postFailure}) {
    return PostCreateFailureState(postFailure: postFailure ?? this.postFailure);
  }
}