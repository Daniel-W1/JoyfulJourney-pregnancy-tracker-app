import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post.dart';


import 'post_create_event.dart';
import 'post_create_state.dart';

class PostCreateBloc extends Bloc<PostCreateEvent, PostCreateState> {
  final PostRepositoryInterface _postRepository;

  PostCreateBloc(this._postRepository) : super(const PostCreateState.empty()) {
    on<PostCreateSubmitEvent>((event, emit) async {
      emit(const PostCreateState.loading());

      Either<Postfailure, PostDomain> result =
          await _postRepository.addPost(event.postForm.copyWith());

      result.fold((l) => emit(PostCreateState.failure(postFailure: l)),
          (r) => emit(PostCreateState.success(post: r)));
    });

    on<PostCreateUpdateEvent>((event, emit) async {
      emit(const PostCreateState.loading());

      Either<Postfailure, PostDomain> result = await _postRepository.updatePost(
          event.postForm.copyWith(), event.postId);

      result.fold((l) => emit(PostCreateState.failure(postFailure: l)), 
      (r) => emit(PostCreateState.success(post: r))
      );
    });
  }
}
