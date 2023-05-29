import 'package:frontend/domain/post/post.dart';

class PostListEvent {
  const PostListEvent._();

  const factory PostListEvent.initial() = PostListEventInitial;

  const factory PostListEvent.load() = PostListEventLoad;

  const factory PostListEvent.refresh() = PostListEventRefresh;

  const factory PostListEvent.loadByAuthor(String author) = PostListEventLoadByAuthor;

  const factory PostListEvent.addPost(PostForm post) = PostListEventAddPost;

  const factory PostListEvent.updatePost(PostForm postForm, String postId) = PostListEventUpdatePost;

  const factory PostListEvent.deletePost(String postId) = PostListEventDeletePost;

  const factory PostListEvent.changeLike(String liker, String postId) = PostListEventChangeLike;
}

class PostListEventInitial extends PostListEvent {
  const PostListEventInitial() : super._();
}

class PostListEventLoad extends PostListEvent {
  const PostListEventLoad() : super._();
}

class PostListEventRefresh extends PostListEvent {
  const PostListEventRefresh() : super._();
}

class PostListEventLoadByAuthor extends PostListEvent {
  final String author;

  const PostListEventLoadByAuthor(this.author) : super._();
}

class PostListEventAddPost extends PostListEvent {
  final PostForm post;

  const PostListEventAddPost(this.post) : super._();
}

class PostListEventUpdatePost extends PostListEvent {
  final PostForm postForm;
  final String postId;

  const PostListEventUpdatePost(this.postForm, this.postId) : super._();
}

class PostListEventDeletePost extends PostListEvent {
  final String postId;

  const PostListEventDeletePost(this.postId) : super._();
}

class PostListEventChangeLike extends PostListEvent {
  final String liker;
  final String postId;

  const PostListEventChangeLike(this.liker, this.postId) : super._();
}
