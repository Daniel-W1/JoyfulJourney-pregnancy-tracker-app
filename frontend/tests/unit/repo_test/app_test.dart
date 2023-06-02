import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';
import 'package:frontend/application/comment/bloc/comment_bloc.dart';
import 'package:frontend/application/note/bloc/note_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/infrastructure/note/note_api.dart';
import 'package:frontend/infrastructure/note/note_repository.dart';
import 'package:frontend/infrastructure/post/post_api.dart';
import 'package:frontend/infrastructure/post/post_repository.dart';

import 'package:frontend/infrastructure/appointment/appointment_api.dart';
import 'package:frontend/infrastructure/appointment/appointment_repository.dart';
import 'package:frontend/main.dart';
import 'package:frontend/presentation/appointments/appointment_page.dart';
import 'package:frontend/presentation/notes/symptoms/notes_page.dart';

void main() {
  testWidgets('App test', (WidgetTester tester) async {
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

    var commentBloc;
    var profileBloc;
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<NoteBloc>.value(value: noteBloc),
          BlocProvider<PostListBloc>.value(value: postBloc),
          BlocProvider<AppointmentBloc>.value(value: appointmentBloc),
        ],
        child: MyApp(
          noteBloc: noteBloc,
          appointmentBloc: appointmentBloc,
          postBloc: postBloc, 
          commentBloc: commentBloc, 
          profileBloc: profileBloc,
        ),
      ),
    );

    // Verify that the NotesPage is rendered
    expect(find.byType(NotesPage), findsOneWidget);

    // Verify that the AppointmentsPage is not rendered
    expect(find.byType(AppointmentsPage), findsNothing);
  });
}
