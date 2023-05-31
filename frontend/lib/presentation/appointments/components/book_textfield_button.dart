import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';
import 'package:frontend/application/appointment/bloc/appointment_event.dart';
import 'package:frontend/domain/appointment/appointment.dart';

import '../../../../../../core/utils/hex_color.dart';

class BookTextFieldButton extends StatefulWidget {
  final String selectedDate;
  final String selectedTime;

  const BookTextFieldButton({
    Key? key,
    required this.selectedDate,
    required this.selectedTime,
  }) : super(key: key);

  @override
  _BookTextFieldButtonState createState() => _BookTextFieldButtonState();
}

class _BookTextFieldButtonState extends State<BookTextFieldButton> {
  late TextEditingController _bodyController;

  @override
  void initState() {
    super.initState();
    _bodyController = TextEditingController();
  }

  @override
  void dispose() {
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appointmentBloc = BlocProvider.of<AppointmentBloc>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HexColor("#DDDDDD"),
            ),
            child: Expanded(
              child: TextField(
                controller: _bodyController,
                decoration: const InputDecoration(
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 228, 194, 206),
            ),
            child: IconButton(
              // increase the size of the button

              onPressed: () {
                // Get the appointment title and body from the TextField
                final appointmentTitle = "Appointment";
                final appointmentBody = _bodyController.text;

                AppointmentForm appointmentForm = AppointmentForm(
                  title: appointmentTitle,
                  body: appointmentBody,
                  date: widget.selectedDate,
                  time: widget.selectedTime,
                );

                appointmentBloc.add(
                  AppointmentEventAdd(appointmentForm),
                );

                // Access appointmentBloc here and perform necessary operations
              },
              icon: const Icon(Icons.send),
            ),
          ),
        ],
      ),
    );
  }
}
