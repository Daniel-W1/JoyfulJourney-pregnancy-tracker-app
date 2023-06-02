import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';
import 'package:frontend/application/note/bloc/note_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/infrastructure/note/note_api.dart';
import 'package:frontend/infrastructure/note/note_repository.dart';
import 'package:frontend/infrastructure/post/post_api.dart';
import 'package:frontend/infrastructure/post/post_repository.dart';
import 'package:frontend/main.dart';
import 'package:frontend/presentation/appointments/appointments_page.dart';
import 'package:frontend/presentation/note_page/notes.dart';

import 'package:frontend/infrastructure/appointment/appointment_api.dart';
import 'package:frontend/infrastructure/appointment/appointment_repository.dart';

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
        ),
      ),
    );

    // Verify that the NotesPage is rendered
    expect(find.byType(NotesPage), findsOneWidget);

    // Verify that the AppointmentsPage is not rendered
    expect(find.byType(AppointmentsPage), findsNothing);
  });
}

// class MyApp extends StatelessWidget {
//   final NoteBloc noteBloc;
//   final PostListBloc postBloc;
//   final AppointmentBloc appointmentBloc;

//   const MyApp({
//     Key? key,
//     required this.noteBloc,
//     required this.postBloc,
//     required this.appointmentBloc,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Timeline Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MultiBlocProvider(
//         providers: [
//           BlocProvider<NoteBloc>.value(value: noteBloc),
//           BlocProvider<PostListBloc>.value(value: postBloc),
//           BlocProvider<AppointmentBloc>.value(value: appointmentBloc),
//         ],
//         child: NotesPage(),
//       ),
//     );
//   }
// }
