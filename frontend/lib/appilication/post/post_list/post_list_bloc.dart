import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/domain/post/post_repository_interface.dart';
import 'package:frontend/domain/post/post_domain.dart';
// import 'package:frontend/domain/post/post_form.freezed.dart';

import 'post_list_events.dart';
import 'post_list_state.dart';

class PostListBloc extends Bloc<PostListEvent, PostListState> {
  final PostRepository postRepository;

  PostListBloc({required this.postRepository})
      : super(const PostListStateInitial()) {
    on<PostListEventLoad>((event, emit) async {
      emit(const PostListStateLoading());
      add(const PostListEventRefresh());
    });

    on<PostListEventRefresh>((event, emit) async {
      Either<PostFailure, List<Post>> post =
          (await postRepository.getPosts()) as Either<PostFailure, List<Post>>;

      post.fold(
        (l) => emit(PostListStateError(l)),
        (r) => emit(PostListStateSuccess(r)),
      );
    });
  }
}
