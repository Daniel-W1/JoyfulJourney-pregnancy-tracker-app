import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/domain/comment/comment_domain.dart';
import 'package:frontend/domain/comment/comment_failure.dart';
import 'package:frontend/domain/comment/comment_form.dart';
import 'package:frontend/infrastructure/comment/comment_api.dart';
import 'package:frontend/infrastructure/comment/comment_dto.dart';
import 'package:frontend/infrastructure/comment/comment_form_mapper.dart';
import 'package:frontend/infrastructure/comment/comment_mapper.dart';
import 'package:frontend/infrastructure/comment/comment_repository.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';
import 'package:frontend/util/jj_timeout_exception.dart';
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';

class MockCommentAPI extends Mock implements CommentAPI {}

void main() {
  late CommentRepository repository;
  late MockCommentAPI mockCommentApi;
  late DatabaseHelper mockDatabaseHelper;

  setUp(() {
    mockCommentApi = MockCommentAPI();
    mockDatabaseHelper = MockDatabaseHelper();
    repository = CommentRepository(mockCommentApi);
  });

  group('getCommentsForPost', () {
    test('should return Right with a list of CommentDomain on successful API call', () async {
      // Arrange
      final postId = '123';
      final commentsDto = [
        CommentDto(
          id: '1',
          postId: postId,
          author: 'Comment 1', body: 'body',
          // ...
        ),
        CommentDto(
          id: '2',
          postId: postId,
          author: 'Comment 2', body: 'body',
          // ...
        ),
      ];
      final commentsDomain = commentsDto.map((e) => CommentDomain.fromJson(e.toJson())).toList();
      final expectedResult = Right(commentsDomain);

      when(mockCommentApi.getCommentsByPost(postId))
          .thenAnswer((_) async => commentsDto);

      // Act
      final result = await repository.getCommentsForPost(postId);

      // Assert
      expect(result, expectedResult);
    });

    test('should return Right with a list of CommentDomain from local database when API call times out', () async {
      // Arrange
      final postId = '123';
      final commentsDto = [
        CommentDto(
          id: '1',
          postId: postId,
          author: 'Comment 1', body: 'body',
          // ...
        ),
        CommentDto(
          id: '2',
          postId: postId,
          author: 'Comment 2', body: 'body',
          // ...
        ),
      ];
      final commentsDomain = commentsDto.map((e) => CommentDomain.fromJson(e.toJson())).toList();
      final expectedResult = Right(commentsDomain);

      when(mockCommentApi.getCommentsByPost(postId)).thenThrow(JJTimeoutException());
      when(mockDatabaseHelper.getCommentsByPost(postId))
          .thenAnswer((_) async => commentsDomain);

      // Act
      final result = await repository.getCommentsForPost(postId);

      // Assert
      expect(result, expectedResult);
    });

    test('should return Left with CommentFailure.serverError() when API call and local database retrieval fail', () async {
      // Arrange
      final postId = '123';
      final expectedResult = Left(CommentFailure.serverError());

      when(mockCommentApi.getCommentsByPost(postId)).thenThrow(Exception());
      when(mockDatabaseHelper.getCommentsByPost(postId)).thenAnswer((_) async => []);

      // Act
      final result = await repository.getCommentsForPost(postId);

      // Assert
      expect(result, expectedResult);
    });
  });

  // Add more test cases for other methods if needed

}

class MockDatabaseHelper extends Mock implements DatabaseHelper {}
