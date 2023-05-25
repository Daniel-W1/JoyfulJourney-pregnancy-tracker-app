import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post.dart';

import 'post_like_event.dart';
import 'post_like_state.dart';

class PostLikeBloc extends Bloc<PostLikeEvent, PostLikeState> {
  final PostRepositoryInterface postRepository;

  PostLikeBloc({required this.postRepository}) : super(const PostLikeStateInitial()) {

    on<PostLikeEventLike>((event, emit) async {
      emit(const PostLikeStateLoading());

      Either<Postfailure, PostDomain> result = await postRepository.likePost(event.postId);

      result.fold(
        (l) => emit(PostLikeStateFailure(postFailure: l)),
        (r) => emit(PostLikeStateSuccess(post: r))
      );
    });

    on<PostLikeEventUnlike>((event, emit) async {
      emit(const PostLikeStateLoading());

      Either<Postfailure, PostDomain> result = await postRepository.unlikePost(event.postId);

      result.fold(
        (l) => emit(PostLikeStateFailure(postFailure: l)),
        (r) => emit(PostLikeStateSuccess(post: r))
      );
    });
  }
}
