import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/comment/comment.dart';

import 'comment_event.dart';
import 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final CommentRepositoryInterface commentRepositoryInterface;

  CommentBloc({required this.commentRepositoryInterface})
      : super(const CommentStateInitial()) {
    on<CommentEventGetComments>((event, emit) async {
      emit(const CommentStateLoading());

      Either<Commentfailure, List<CommentDomain>> result =
          await commentRepositoryInterface.getComments();

      result.fold((l) => emit(CommentStateFailure(l)),
          (r) => emit(CommentStateSuccessMultiple(r)));
    });

    on<CommentEventGetCommentsForPost>((event, emit) async {
      emit(const CommentStateLoading());

      Either<Commentfailure, List<CommentDomain>> result =
          await commentRepositoryInterface.getCommentsForPost(event.postId);

      result.fold((l) => emit(CommentStateFailure(l)),
          (r) => emit(CommentStateSuccessMultiple(r)));
    });

    on<CommentEventGetUserComments>((event, emit) async {
      emit(const CommentStateLoading());

      Either<Commentfailure, List<CommentDomain>> result =
          await commentRepositoryInterface.getUserComments(event.userid);

      result.fold((l) => emit(CommentStateFailure(l)),
          (r) => emit(CommentStateSuccessMultiple(r)));
    });

    on<CommentEventAddComment>(
      (event, emit) async {
        emit(const CommentStateLoading());

        Either<Commentfailure, CommentDomain> result =
            await commentRepositoryInterface.addComment(event.commentForm.copyWith());

        result.fold((l) => emit(CommentStateFailure(l)),
            (r) => emit(CommentStateSuccess(r)));
      },
    );

    on<CommentEventUpdateComment>(
      (event, emit) async {
        emit(const CommentStateLoading());

        Either<Commentfailure, CommentDomain> result =
            await commentRepositoryInterface.updateComment(event.commentForm.copyWith(), event.commentId);

        result.fold((l) => emit(CommentStateFailure(l)),
            (r) => emit(CommentStateSuccess(r)));
      },
    );


    on<CommentEventDeleteComment>(((event, emit) async {
      emit(const CommentStateLoading());

      Either<Commentfailure, Unit> result =
          await commentRepositoryInterface.deleteComment(event.commentId);

      result.fold(
        (l) => emit(CommentStateFailure(l)),
        (r) => emit(const CommentStateDeleted())
      );
    }));
  }
}
