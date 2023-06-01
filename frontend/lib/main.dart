import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';
import 'package:frontend/application/note/bloc/note_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/application/tip/bloc/tip_bloc.dart';
import 'package:frontend/core/Themes/light_theme.dart';
import 'package:frontend/infrastructure/note/note_api.dart';
import 'package:frontend/infrastructure/note/note_repository.dart';
import 'package:frontend/infrastructure/post/post_api.dart';
import 'package:frontend/infrastructure/post/post_repository.dart';
import 'package:frontend/presentation/posts/posts_page.dart';
// import 'package:frontend/presentation/appointments/appointments_page.dart';
// import 'package:frontend/presentation/note_page/notes.dart';
import 'package:frontend/presentation/tips/home_page.dart';

import 'infrastructure/appointment/appointment_api.dart';
import 'infrastructure/appointment/appointment_repository.dart';
import 'infrastructure/tip/tip_api.dart';
import 'infrastructure/tip/tip_repository.dart';

void main() {
  NoteAPI noteApi = NoteAPI();
  NoteRepository noteRepository = NoteRepository(noteApi);
  NoteBloc noteBloc = NoteBloc(noteRepositoryInterface: noteRepository);

  PostAPI postApi = PostAPI();
  PostRepository postRepository = PostRepository(postApi);
  PostListBloc postBloc = PostListBloc(postRepository: postRepository);

  AppointmentAPI appointmentApi = AppointmentAPI();
  AppointmentRepository appointmentRepository =
      AppointmentRepository(appointmentApi);
  AppointmentBloc appointmentBloc =
      AppointmentBloc(appointmentRepositoryInterface: appointmentRepository);

  TipAPI tipApi = TipAPI();
  TipRepository tipRepository = TipRepository(tipApi);
  TipBloc tipBloc = TipBloc(tipRepositoryInterface: tipRepository);


  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<NoteBloc>.value(value: noteBloc),
        BlocProvider<PostListBloc>.value(value: postBloc),
        BlocProvider<AppointmentBloc>.value(value: appointmentBloc),
        BlocProvider<TipBloc>.value(value: tipBloc),
      ],
      child: MyApp(
        noteBloc: noteBloc,
        appointmentBloc: appointmentBloc,
        postBloc: postBloc,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final NoteBloc noteBloc;
  final PostListBloc postBloc;
  final AppointmentBloc appointmentBloc;

  const MyApp({
    Key? key,
    required this.noteBloc,
    required this.postBloc,
    required this.appointmentBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Timeline Demo',
      theme: LightTheme().getThemeData,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<NoteBloc>.value(value: noteBloc),
          BlocProvider<PostListBloc>.value(value: postBloc),
        ],
        child: Scaffold(
          body: PostsPage(),
        ),
      ),
    );
  }
}
