import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/comment/bloc/comment_bloc.dart';
import 'package:frontend/application/comment/bloc/comment_event.dart';
import 'package:frontend/application/comment/bloc/comment_state.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/comment/comment.dart';
// import 'package:frontend/presentation/comment/comment_bloc.dart';
// import 'package:frontend/presentation/comment/comment_event.dart';
// import 'package:frontend/presentation/comment/comment_state.dart';

class MockCommentRepository extends Mock implements CommentRepositoryInterface {}

void main() {
  late CommentBloc commentBloc;
  late MockCommentRepository mockCommentRepository;

  setUp(() {
    mockCommentRepository = MockCommentRepository();
    commentBloc = CommentBloc(commentRepositoryInterface: mockCommentRepository);
  });

  tearDown(() {
    commentBloc.close();
  });

  group('CommentBloc', () {
    final comments = [CommentDomain( author: '', body: '', postId: ''), CommentDomain( author: '', body: '', postId: '')]; // Provide comments for testing
    final postId = 'post_id'; // Provide a post ID for testing
    final userId = 'user_id'; // Provide a user ID for testing
    final commentForm = CommentForm(body: '', postId: ''); // Provide a comment form for testing
    final commentId = 'comment_id'; // Provide a comment ID for testing
    final failure = ('Failed to get comments'); // Provide a failure object

    test('emits CommentStateSuccessMultiple when getting all comments', () {
      when(mockCommentRepository.getComments())
          .thenAnswer((_) async => Right(comments));

      final expected = [
        CommentStateLoading(),
        CommentStateSuccessMultiple(comments),
      ];

      expectLater(commentBloc.stream, emitsInOrder(expected));

      commentBloc.add(CommentEventGetComments());
    });

    test('emits CommentStateSuccessMultiple when getting comments for a post', () {
      when(mockCommentRepository.getCommentsForPost(postId))
          .thenAnswer((_) async => Right(comments));

      final expected = [
        CommentStateLoading(),
        CommentStateSuccessMultiple(comments),
      ];

      expectLater(commentBloc.stream, emitsInOrder(expected));

      commentBloc.add(CommentEventGetCommentsForPost(postId));
    });

    test('emits CommentStateSuccessMultiple when getting user comments', () {
      when(mockCommentRepository.getUserComments(userId))
          .thenAnswer((_) async => Right(comments));

      final expected = [
        CommentStateLoading(),
        CommentStateSuccessMultiple(comments),
      ];

      expectLater(commentBloc.stream, emitsInOrder(expected));

      commentBloc.add(CommentEventGetUserComments(userId));
    });

    test('emits CommentStateSuccess when adding a comment', () {
      when(mockCommentRepository.addComment(commentForm))
          .thenAnswer((_) async => Right(CommentDomain( author: '', body: '', postId: '')));

      final expected = [
        CommentStateLoading(),
        CommentStateSuccess(CommentDomain( author: '', body: '', postId: '')),
      ];

      expectLater(commentBloc.stream, emitsInOrder(expected));

      commentBloc.add(CommentEventAddComment(commentForm));
    });

    test('emits CommentStateSuccess when updating a comment', () {
      when(mockCommentRepository.updateComment(commentForm: commentForm, commentId: commentId))
          .thenAnswer((_) async => Right(CommentDomain( author: '', body: '', postId: '')));

      final expected = [
        CommentStateLoading(),
        CommentStateSuccess(CommentDomain( author: '', body: '', postId: ''),),
      ];

      expectLater(commentBloc.stream, emitsInOrder(expected));

      commentBloc.add(CommentEventUpdateComment(commentForm, commentId));
    });

    test('emits CommentStateDeleted when deleting a comment', () {
      when(mockCommentRepository.deleteComment(commentId))
          .thenAnswer((_) async => Right(unit));

      final expected = [
        CommentStateLoading(),
        CommentStateDeleted(),
      ];

      expectLater(commentBloc.stream, emitsInOrder(expected));

      commentBloc.add(CommentEventDeleteComment(commentId));
    });

    // ...
  });
}
