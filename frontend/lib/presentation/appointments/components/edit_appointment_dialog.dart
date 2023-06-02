import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/appointment/bloc/appointment_event.dart';

import '../../../application/appointment/bloc/appointment_bloc.dart';
import '../../../domain/appointment/appointment_form.dart';

class EditAppointmentDialog extends StatelessWidget {
  final TextEditingController _titleController;
  final TextEditingController _bodyController;
  final TextEditingController _dateController;
  final TextEditingController _timeController;

  final String appointmentId;

  EditAppointmentDialog({
    Key? key,
    required String initialTitle,
    required String initialBody,
    required String initialDate,
    required String initialTime,
    required this.appointmentId,
  })  : _titleController = TextEditingController(text: initialTitle),
        _bodyController = TextEditingController(text: initialBody),
        _dateController = TextEditingController(text: initialDate),
        _timeController = TextEditingController(text: initialTime),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final appointmentBloc = BlocProvider.of<AppointmentBloc>(context);

    return AlertDialog(
      title: Text('Edit Appointment'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 80,
              child: TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              child: TextField(
                controller: _bodyController,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Body',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 80,
              child: TextField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: 'Date',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 80,
              child: TextField(
                controller: _timeController,
                decoration: InputDecoration(
                  labelText: 'Time',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            // TODO: Implement cancel logic here
            Navigator.pop(context); // Close the dialog
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            AppointmentForm appointmentForm = AppointmentForm(
              title: _titleController.text,
              body: _bodyController.text,
              date: _dateController.text,
              time: _timeController.text,
            );

            print("Form here");
            print(appointmentForm.body);
            appointmentBloc
                .add(AppointmentEventUpdate(appointmentForm, appointmentId));

            Navigator.pop(context); // Close the dialog
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: Text('Update'),
        ),
        ElevatedButton(
          onPressed: () {
            appointmentBloc.add(AppointmentEventDelete(appointmentId));
            Navigator.pop(context); // Close the dialog
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 175, 76, 76),
          ),
          child: Text('Delete'),
        ),
      ],
    );
  }
}
