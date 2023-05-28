import 'package:frontend/domain/post/post.dart';

class PostCreateEvent {
  const PostCreateEvent._();

  const factory PostCreateEvent.update(PostForm postForm, String postId) = PostCreateEventUpdate;
  const factory PostCreateEvent.submit(PostForm postForm) = PostCreateEventSubmit;
}

class PostCreateEventUpdate extends PostCreateEvent {
  final PostForm postForm;
  final String postId;

  const PostCreateEventUpdate(this.postForm, this.postId) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostCreateEventUpdate &&
          runtimeType == other.runtimeType &&
          postForm == other.postForm &&
          postId == other.postId;

  @override
  int get hashCode => runtimeType.hashCode ^ postForm.hashCode ^ postId.hashCode;
}

class PostCreateEventSubmit extends PostCreateEvent {
  final PostForm postForm;

  const PostCreateEventSubmit(this.postForm) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostCreateEventSubmit &&
          runtimeType == other.runtimeType &&
          postForm == other.postForm;

  @override
  int get hashCode => runtimeType.hashCode ^ postForm.hashCode;
}