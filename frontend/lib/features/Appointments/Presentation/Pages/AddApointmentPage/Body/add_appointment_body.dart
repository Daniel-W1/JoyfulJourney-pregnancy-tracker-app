import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';
import 'add_appointment_app_bar.dart';
import 'book_textfield_button.dart';
import 'date_month_year_picker.dart';
import 'time_label.dart';
import 'time_picker.dart';

class AddAppointmentBody extends StatelessWidget {
  const AddAppointmentBody({super.key});

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
              )),
          const Body(),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AddAppointmentAppBar(),
          TimeLabel(),
          DateMonthYearPicker(),
          TimePicker(),
          BookTextFieldButton()
        ],
      ),
    );
  }
}
