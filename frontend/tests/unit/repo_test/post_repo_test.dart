import 'package:frontend/infrastructure/post/post_api.dart';
import 'package:test/test.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post_domain.dart';
import 'package:frontend/domain/post/post_failure.dart';
import 'package:frontend/domain/post/post_form.dart';
import 'package:frontend/infrastructure/post/post_repository.dart';
import 'package:mockito/mockito.dart';

class MockPostRepository extends Mock implements PostRepository {}

void main() {
  late PostRepository postRepository;
  late MockPostRepository mockPostRepository;

  setUp(() {
    mockPostRepository = MockPostRepository();
    postRepository = PostRepository(mockPostRepository as PostAPI);
  });

  group('getPosts', () {
    test('should return a list of PostDomain when repository call is successful',
        () async {
      // Arrange
      final postDomainList = [
        PostDomain(id: '1', author: 'John Doe', body: '', comments: [], likes: []),
        PostDomain(id: '2', author: 'John Doe', body: '', comments: [], likes: []),
      ];

      when(mockPostRepository.getPosts())
          .thenAnswer((_) async => right(postDomainList));

      // Act
      final result = await postRepository.getPosts();

      // Assert
      expect(result, equals(right(postDomainList)));
      verify(mockPostRepository.getPosts()).called(1);
    });

    test('should return PostFailure.serverError when repository call fails', () async {
      // Arrange
      when(mockPostRepository.getPosts()).thenAnswer((_) async =>
          left(PostFailure.serverError()));

      // Act
      final result = await postRepository.getPosts();

      // Assert
      expect(result, equals(left(PostFailure.serverError())));
      verify(mockPostRepository.getPosts()).called(1);
    });
  });

  group('getPostsForAuthor', () {
    test('should return a list of PostDomain when repository call is successful',
        () async {
      // Arrange
      final author = 'John Doe';
      final postDomainList = [
        PostDomain(id: '1', author: author, comments: [], likes: [], body: ''),
        PostDomain(id: '2', author: author, comments: [], likes: [], body: ''),
      ];

      when(mockPostRepository.getPostsForAuthor(author))
          .thenAnswer((_) async => right(postDomainList));

      // Act
      final result = await postRepository.getPostsForAuthor(author);

      // Assert
      expect(result, equals(right(postDomainList)));
      verify(mockPostRepository.getPostsForAuthor(author)).called(1);
    });

    test('should return PostFailure.serverError when repository call fails', () async {
      // Arrange
      final author = 'John Doe';
      when(mockPostRepository.getPostsForAuthor(author)).thenAnswer((_) async =>
          left(PostFailure.serverError()));

      // Act
      final result = await postRepository.getPostsForAuthor(author);

      // Assert
      expect(result, equals(left(PostFailure.serverError())));
      verify(mockPostRepository.getPostsForAuthor(author)).called(1);
    });
  });

  // Add more unit tests for other methods in the PostRepository class
}
