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
        (l) => emit(PostListStateFailure(postFailure: l)),
        (r) => emit(PostListStateSuccess(post: r)),
      );
    });

    on<PostListEventLoadByAuthor>((event, emit) async {
      emit(const PostListStateLoading());
      Either<PostFailure, List<PostDomain>> post =
          await postRepository.getPostsForAuthor(event.author);

      print('getting posts for author ${event.author} $post');
      post.fold(
        (l) => emit(PostListStateFailure(postFailure: l)),
        (r) => emit(PostListStateSuccess(post: r)),
      );
    });

    on<PostListEventAddPost>((event, emit) async {
      emit(const PostListStateLoading());

      // Add the new post to the repository
      Either<PostFailure, PostDomain> result =
          await postRepository.addPost(event.post);

      result.fold(
        (l) => emit(PostListStateFailure(postFailure: l)),
        (_) => emit(const PostListStateAddSuccess()),
      );

      // Refresh the post list
      
    });

    on<PostListEventUpdatePost> ((event, emit) async {
      emit(const PostListStateLoading());
      print("made it to the event");
      // Update the post in the repository
      Either<PostFailure, PostDomain> result =
          await postRepository.updatePost(postForm: event.postForm, postId:event.postId);

      result.fold(
        (l) => emit(PostListStateFailure(postFailure: l)),
        (_) => emit(const PostListStateAddSuccess()),
      );
    
    },);

    on<PostListEventDeletePost> ((event, emit) async {
      Either<PostFailure, Unit> result = await postRepository.deletePost(event.postId);

      result.fold((l) => emit(PostListStateFailure(postFailure: l)), (r) => emit(const PostListStateDeleted()),);
    },);
  }
}
