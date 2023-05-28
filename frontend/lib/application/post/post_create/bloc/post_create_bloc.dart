import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post.dart';


import 'post_create_event.dart';
import 'post_create_state.dart';

class PostCreateBloc extends Bloc<PostCreateEvent, PostCreateState> {
  final PostRepositoryInterface _postRepository;

  PostCreateBloc(this._postRepository) : super(PostCreateEmptyState()) {
    on<PostCreateEventSubmit>((event, emit) async {
      emit(PostCreateLoadingState());

      Either<PostFailure, PostDomain> result =
          await _postRepository.addPost(event.postForm);

      result.fold((l) => emit(PostCreateFailureState(postFailure: l)),
          (r) => emit(PostCreateSuccessState(post: r)));
    });

    on<PostCreateEventUpdate>((event, emit) async {
      emit(PostCreateLoadingState());

      Either<PostFailure, PostDomain> result = await _postRepository.updatePost(
          postForm:event.postForm, postId:event.postId);

      result.fold((l) => emit(PostCreateFailureState(postFailure: l)), 
      (r) => emit(PostCreateSuccessState(post: r))
      );
    });
  }
}
