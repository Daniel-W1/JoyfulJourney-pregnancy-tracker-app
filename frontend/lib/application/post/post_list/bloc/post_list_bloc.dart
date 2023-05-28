import 'package:dartz/dartz.dart';
import 'package:bloc/bloc.dart';
import 'package:frontend/domain/post/post.dart';


import 'post_list_events.dart';
import 'post_list_state.dart';

class PostListBloc extends Bloc<PostListEvent, PostListState> {
  final PostRepositoryInterface postRepository;

  PostListBloc({required this.postRepository})

      : super(const PostListStateInitial()) {
    on<PostListEventLoad>((event, emit) async {
      emit(const PostListStateLoading());
      add(const PostListEventRefresh());
    });

    on<PostListEventRefresh>((event, emit) async {
      Either<PostFailure, List<PostDomain>> post =
          await postRepository.getPosts();

      post.fold(
        (l) => emit(PostListStateFailure(postFailure:l)),
        (r) => emit(PostListStateSuccess(post:r)),
      );
    });
  }
}
