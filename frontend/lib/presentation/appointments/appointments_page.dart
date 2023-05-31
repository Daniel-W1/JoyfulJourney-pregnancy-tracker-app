import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/presentation/appointments/components/appointments_body.dart';
import '../../../../../core/constants/assets.dart';
import '../../application/appointment/bloc/appointment_bloc.dart';
import '../../infrastructure/appointment/appointment_api.dart';
import '../../infrastructure/appointment/appointment_repository.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({Key? key}) : super(key: key);

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    print("build called");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appointmentsAppBar(size, context),
      body: AppointmentsBody(),
    );
  }

  PreferredSize appointmentsAppBar(Size size, BuildContext context) {
    return PreferredSize(
      preferredSize: Size(size.width, 80),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 27),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      Assets.assetsImagesArrow,
                      width: 36,
                      height: 36,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Appointment",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
