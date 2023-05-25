import 'package:frontend/domain/post/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_create_event.freezed.dart';

@freezed
abstract class PostCreateEvent with _$PostCreateEvent {
  const factory PostCreateEvent.update(
      {required PostForm postForm,
      required String postId}) = PostCreateUpdateEvent;

  const factory PostCreateEvent.submit({required PostForm postForm}) =
      PostCreateSubmitEvent;
}
