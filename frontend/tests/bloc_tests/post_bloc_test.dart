import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:frontend/application/post/post_create/bloc/post_create_bloc.dart';
import 'package:frontend/application/post/post_create/bloc/post_create_event.dart';
import 'package:frontend/application/post/post_create/bloc/post_create_state.dart';
import 'package:frontend/domain/post/post.dart';
import 'package:frontend/domain/post/post_repository_interface.dart';

class MockPostRepository extends Mock implements PostRepositoryInterface {}

void main() {
  group('PostCreateBloc', () {
    late MockPostRepository mockPostRepository;
    late PostCreateBloc postCreateBloc;

    setUp(() {
      mockPostRepository = MockPostRepository();
      postCreateBloc = PostCreateBloc(mockPostRepository);
    });

    test('initial state should be PostCreateEmptyState', () {
      expect(postCreateBloc.state, equals(PostCreateEmptyState()));
    });

    test(
      'emits loading and success states when post creation is successful',
      () {
        // Set up the mock response for the repository call
        when(mockPostRepository.addPost(PostForm(
          body: '',
          comments: [],
          likes: [],
        ))).thenAnswer((_) async =>
            Right(PostDomain(
                author: '',
                body: '',
                comments: [],
                likes: [],
                )));

        // Add the event to the bloc
        postCreateBloc.add(PostCreateEventSubmit(
            PostForm(
                body: '', comments: [], likes: [], )));

        // Expect the emitted states
        expectLater(
          postCreateBloc.stream,
          emitsInOrder([
            PostCreateLoadingState(),
            PostCreateSuccessState(
                post: PostDomain(
                    author: '',
                    body: '',
                    comments: [],
                    likes: [],
                    )),
          ]),
        );
      },
    

    
    );
  });
}
