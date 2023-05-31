import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/note/bloc/note_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/infrastructure/note/note_api.dart';
import 'package:frontend/infrastructure/note/note_repository.dart';
import 'package:frontend/infrastructure/post/post_api.dart';
import 'package:frontend/infrastructure/post/post_repository.dart';
import 'package:frontend/presentation/appointments/appointments_page.dart';

void main() {
  NoteAPI noteApi = NoteAPI();
  NoteRepository noteRepository = NoteRepository(noteApi);
  NoteBloc noteBloc = NoteBloc(noteRepositoryInterface: noteRepository);

  PostAPI postApi = PostAPI();
  PostRepository postRepository = PostRepository(postApi);
  PostListBloc postBloc = PostListBloc(postRepository: postRepository);

  runApp(MyApp(
    noteBloc: noteBloc,
    postBloc: postBloc,
  ));
}

class MyApp extends StatelessWidget {
  final NoteBloc noteBloc;
  final PostListBloc postBloc;

  const MyApp({
    Key? key,
    required this.noteBloc,
    required this.postBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Timeline Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<NoteBloc>.value(value: noteBloc),
          BlocProvider<PostListBloc>.value(value: postBloc)
        ],
        child: AppointmentsPage(),
      ),
    );
  }
}
