import 'package:flutter/material.dart';
import '../../../application/appointment/bloc/appointment_bloc.dart';
import '../../../infrastructure/appointment/appointment_api.dart';
import '../../../infrastructure/appointment/appointment_repository.dart';
import '../../core/constants/assets.dart';
import 'add_appointment_app_bar.dart';
import 'book_textfield_button.dart';
import 'date_month_year_picker.dart';
import 'time_label.dart';
import 'time_picker.dart';

class AddAppointmentBody extends StatefulWidget {
  const AddAppointmentBody({Key? key});

  @override
  _AddAppointmentBodyState createState() => _AddAppointmentBodyState();
}

class _AddAppointmentBodyState extends State<AddAppointmentBody> {
  late String selectedDate;
  late String selectedTime;

  @override
  void initState() {
    super.initState();
    selectedDate = ''; // Initialize selected date
    selectedTime = ''; // Initialize selected time
  }

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
          Body(
            selectedDate: selectedDate,
            selectedTime: selectedTime,
            onDateSelected: (date) {
              setState(() {
                selectedDate = date;
              });
            },
            onTimeSelected: (time) {
              setState(() {
                selectedTime = time;
              });
            },
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  final String selectedDate;
  final String selectedTime;
  final Function(String) onDateSelected;
  final Function(String) onTimeSelected;

  const Body({
    Key? key,
    required this.selectedDate,
    required this.selectedTime,
    required this.onDateSelected,
    required this.onTimeSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize dependencies

    return SingleChildScrollView(
      child: Column(
        children: [
          AddAppointmentAppBar(),
          TimeLabel(),
          DateMonthYearPicker(
            onDateSelected: onDateSelected,
          ),
          TimePicker(
            onTimeSelected: onTimeSelected,
          ),
          BookTextFieldButton(
              selectedDate: selectedDate, selectedTime: selectedTime),
        ],
      ),
    );
  }
}
