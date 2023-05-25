import 'package:frontend/domain/post/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_create_state.freezed.dart';

@freezed
class PostCreateState with _$PostCreateState {
  const factory PostCreateState.empty() = PostCreateEmptyState;
  const factory PostCreateState.loading() = PostCreateLoadingState;
  const factory PostCreateState.success({required PostDomain post}) =
      PostCreateSuccessState;
  const factory PostCreateState.failure({required Postfailure postFailure}) =
      PostCreateFailureState;
}
