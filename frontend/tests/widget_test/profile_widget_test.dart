import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/comment/bloc/comment_bloc.dart';
import 'package:frontend/application/comment/bloc/comment_event.dart';
import 'package:frontend/application/comment/bloc/comment_state.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_events.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_state.dart';
import 'package:frontend/application/profile/bloc/profile_event.dart';
import 'package:frontend/application/profile/bloc/profile_bloc.dart';
import 'package:frontend/application/profile/bloc/profile_state.dart';
import 'package:frontend/presentation/profile/components/commentcard.dart';
import 'package:frontend/presentation/profile/components/links.dart';
import 'package:frontend/presentation/profile/components/postcard.dart';
import 'package:frontend/presentation/profile/profile.dart';

class MockPostListBloc extends MockBloc<PostListEvent, PostListState>
    implements PostListBloc {}

class MockCommentBloc extends MockBloc<CommentEvent, CommentState>
    implements CommentBloc {}

class MockProfileBloc extends MockBloc<ProfileEvent, ProfileState>
    implements ProfileBloc {}

void main() {
  group('ProfilePage widget test', () {
    late MockPostListBloc postListBloc;
    late MockCommentBloc commentBloc;
    late MockProfileBloc profileBloc;

    setUp(() {
      postListBloc = MockPostListBloc();
      commentBloc = MockCommentBloc();
      profileBloc = MockProfileBloc();
    });

    testWidgets('renders ProfilePage correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MultiBlocProvider(
            providers: [
              BlocProvider<PostListBloc>.value(value: postListBloc),
              BlocProvider<CommentBloc>.value(value: commentBloc),
              BlocProvider<ProfileBloc>.value(value: profileBloc),
            ],
            child: ProfilePage(),
          ),
        ),
      );

      // Verify the presence of the SliverAppBar
      expect(find.byType(SliverAppBar), findsOneWidget);

      // Verify the presence of the TabBar
      expect(find.byType(TabBar), findsOneWidget);

      // Verify the presence of the TabBarView
      expect(find.byType(TabBarView), findsOneWidget);

      // Verify the presence of the PostCard widget
      expect(find.byType(PostCard), findsOneWidget);

      // Verify the presence of the CommentCard widget
      expect(find.byType(CommentCard), findsOneWidget);

      // Verify the presence of the Linkcard widget
      expect(find.byType(Linkcard), findsNWidgets(4));
    });

    testWidgets('displays loading indicators when loading posts',
        (WidgetTester tester) async {
      whenListen(postListBloc, Stream.value(PostListStateLoading()));

      await tester.pumpWidget(
        MaterialApp(
          home: MultiBlocProvider(
            providers: [
              BlocProvider<PostListBloc>.value(value: postListBloc),
              BlocProvider<CommentBloc>.value(value: commentBloc),
              BlocProvider<ProfileBloc>.value(value: profileBloc),
            ],
            child: ProfilePage(),
          ),
        ),
      );

      // Verify the presence of the CircularProgressIndicator
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('displays loading indicators when loading comments',
        (WidgetTester tester) async {
      whenListen(commentBloc, Stream.value(CommentStateLoading()));

      await tester.pumpWidget(
        MaterialApp(
          home: MultiBlocProvider(
            providers: [
              BlocProvider<PostListBloc>.value(value: postListBloc),
              BlocProvider<CommentBloc>.value(value: commentBloc),
              BlocProvider<ProfileBloc>.value(value: profileBloc),
            ],
            child: ProfilePage(),
          ),
        ),
      );

      // Verify the presence of the CircularProgressIndicator
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('displays loading indicators when loading profile',
        (WidgetTester tester) async {
      whenListen(profileBloc, Stream.value(ProfileStateLoading()));

      await tester.pumpWidget(
        MaterialApp(
          home: MultiBlocProvider(
            providers: [
              BlocProvider<PostListBloc>.value(value: postListBloc),
              BlocProvider<CommentBloc>.value(value: commentBloc),
              BlocProvider<ProfileBloc>.value(value: profileBloc),
            ],
            child: ProfilePage(),
          ),
        ),
      );

      // Verify the presence of the CircularProgressIndicator
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
