import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_like_event.freezed.dart';

@freezed
abstract class PostLikeEvent with _$PostLikeEvent {
  const factory PostLikeEvent.initial() = PostLikeEventInitial;

  const factory PostLikeEvent.like({required String postId}) = PostLikeEventLike;
  const factory PostLikeEvent.unlike({required String postId}) = PostLikeEventUnlike;
}