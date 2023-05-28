import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post.dart';

import 'post_like_event.dart';
import 'post_like_state.dart';

class PostLikeBloc extends Bloc<PostLikeEvent, PostLikeState> {
  final PostRepositoryInterface postRepository;

  PostLikeBloc({required this.postRepository}) : super(const PostLikeStateInitial()) {

    on<PostLikeEventChangeLike>((event, emit) async {
      emit(const PostLikeStateLoading());

      Either<PostFailure, PostDomain> result = await postRepository.changeLike(event.liker, event.postId);

      result.fold(
        (l) => emit(PostLikeStateFailure(postFailure: l)),
        (r) => emit(PostLikeStateSuccess(post: r))
      );
    });

}
}