import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/presentation/appointments/appointment_page.dart';
import 'package:frontend/presentation/appointments/components/appointments_body.dart';

void main() {
  testWidgets('AppointmentsPage widget test', (WidgetTester tester) async {
    // Build the AppointmentsPage widget
    await tester.pumpWidget(
      MaterialApp(
        home: AppointmentsPage(),
      ),
    );

    // Verify the presence of the AppBar and its contents
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text('Appointment'), findsOneWidget);

    // Verify the presence of the AppointmentsBody widget
    expect(find.byType(AppointmentsBody), findsOneWidget);
  });
}
