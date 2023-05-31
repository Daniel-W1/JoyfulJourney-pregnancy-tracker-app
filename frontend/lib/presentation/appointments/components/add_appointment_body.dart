import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';
import '../../../application/appointment/bloc/appointment_bloc.dart';
import '../../../infrastructure/appointment/appointment_api.dart';
import '../../../infrastructure/appointment/appointment_repository.dart';
import 'add_appointment_app_bar.dart';
import 'book_textfield_button.dart';
import 'date_month_year_picker.dart';
import 'time_label.dart';
import 'time_picker.dart';

class AddAppointmentBody extends StatelessWidget {
  const AddAppointmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    AppointmentAPI appointmentApi = AppointmentAPI();
    AppointmentRepository appointmentRepository =
        AppointmentRepository(appointmentApi);
    AppointmentBloc appointmentBloc =
        AppointmentBloc(appointmentRepositoryInterface: appointmentRepository);

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
  final AppointmentBloc appointmentBloc;

  const Body({
    Key? key,
    required this.appointmentBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize dependencies

    return SingleChildScrollView(
      child: Column(
        children: [
          AddAppointmentAppBar(),
          TimeLabel(),
          DateMonthYearPicker(),
          TimePicker(),
          BookTextFieldButton(appointmentBloc: appointmentBloc),
        ],
      ),
    );
  }
}
