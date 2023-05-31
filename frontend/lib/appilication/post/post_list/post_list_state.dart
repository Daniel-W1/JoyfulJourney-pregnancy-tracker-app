import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'post_list_state.freezed.dart';

@freezed
class PostListState with _$PostListState {
  const factory PostListState.initial() = PostListStateInitial;
  const factory PostListState.error(PostFailure postFailure) =
      PostListStateError;
  const factory PostListState.loading() = PostListStateLoading;
  const factory PostListState.success(List<Post> post) =
      PostListStateSuccess;
}

mixin Post {
}

mixin PostFailure {
}