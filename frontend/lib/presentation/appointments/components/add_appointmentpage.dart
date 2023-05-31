import 'package:flutter/material.dart';
import 'package:frontend/presentation/appointments/components/add_appointment_body.dart';
import '../../../../../core/constants/assets.dart';

class AddAppointmentPage extends StatefulWidget {
  const AddAppointmentPage({super.key});

  @override
  State<AddAppointmentPage> createState() => _AddAppointmentPageState();
}

class _AddAppointmentPageState extends State<AddAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //  appBar: appointmentsAppBar(size, context),
      body: AddAppointmentBody(),
    );
  }

  PreferredSize appointmentsAppBar(Size size, BuildContext context) {
    return PreferredSize(
        preferredSize: Size(size.width, 50),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 27),
          child: Row(children: [
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                //  Navigator.pop(context);
              },
              child: Image.asset(
                Assets.assetsImagesArrow,
                width: 36,
                height: 36,
              ),
            ),
            const Text(
              "Appointment",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ]),
        )));
  }
}
