import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_events.dart';
import 'package:frontend/domain/post/post.dart';
import 'package:frontend/presentation/posts/components/createPostForm.dart';
import 'package:frontend/presentation/posts/components/posts_body.dart';
import 'package:frontend/presentation/posts/posts_page.dart';

class MockPostRepository implements PostRepositoryInterface {
  // Implement the required methods here for testing purposes
}

void main() {
  testWidgets('PostsPage widget test', (WidgetTester tester) async {
    // Create a mock PostRepositoryInterface
    final postRepository = MockPostRepository();

    // Create a mock PostListBloc
    final bloc = PostListBloc(postRepository: postRepository);

    // Build the PostsPage widget
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<PostListBloc>.value(
          value: bloc,
          child: PostsPage(),
        ),
      ),
    );

    // Verify the presence of the FloatingActionButton
    expect(find.byType(FloatingActionButton), findsOneWidget);

    // Tap the FloatingActionButton to trigger the dialog
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    // Verify the presence of the CreatePostForm widget inside the dialog
    expect(find.byType(CreatePostForm), findsOneWidget);

    // Simulate creating a post by submitting the form
    final postText = 'Test Post';
    await tester.enterText(find.byType(TextFormField), postText);
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();

    // Verify that the PostListBloc received the AddPost event
    expect(bloc.state, emits(PostListEventAddPost(PostForm(body: postText, comments: [], likes: [], title: ''))));

    // Verify the presence of the PostsBody widget
    expect(find.byType(PostsBody), findsOneWidget);
  });
}
