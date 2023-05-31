import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';
import 'add_appointment_app_bar.dart';
import 'book_textfield_button.dart';
import 'date_month_year_picker.dart';
import 'time_label.dart';
import 'time_picker.dart';

DateTime currentDate = DateTime.now();
TimeOfDay currentTime = TimeOfDay.now();
String _formatTime(TimeOfDay time) {
  final hour = time.hour.toString().padLeft(2, '0');
  final minute = time.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}

class AddAppointmentBody extends StatelessWidget {
  const AddAppointmentBody({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              Assets.assetsImagesEllipse51,
              scale: 2,
            ),
          ),
          Body(),
        ],
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // give selectedDate default current date and selectedTime default current time

  String selectedDate =
      '${currentDate.day}/${currentDate.month}/${currentDate.year}';
  String selectedTime = _formatTime(currentTime);

  @override
  Widget build(BuildContext context) {
    // Initialize dependencies

    return SingleChildScrollView(
      child: Column(
        children: [
          AddAppointmentAppBar(),
          TimeLabel(),
          DateMonthYearPicker(
            onDateSelected: (date) {
              setState(() {
                selectedDate = date;
              });
            },
          ),
          TimePicker(
            onTimeSelected: (time) {
              setState(() {
                selectedTime = time;
              });
            },
          ),
          BookTextFieldButton(
            selectedDate: selectedDate,
            selectedTime: selectedTime,
          ),
        ],
      ),
    );
  }
}
