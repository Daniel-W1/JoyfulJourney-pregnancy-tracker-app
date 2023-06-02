import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/presentation/notes/symptoms/components/notes_body.dart';
import 'package:frontend/presentation/notes/symptoms/notes_page.dart';

void main() {
  testWidgets('NotesPage widget test', (WidgetTester tester) async {
    // Build the NotesPage widget
    await tester.pumpWidget(
      MaterialApp(
        home: NotesPage(),
      ),
    );

    // Verify the presence of the AppBar and its contents
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text('Notes'), findsOneWidget);

    // Verify the presence of the NoteBody widget
    expect(find.byType(NoteBody), findsOneWidget);
  });
}
