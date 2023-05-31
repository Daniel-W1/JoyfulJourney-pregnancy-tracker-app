import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';
import 'package:frontend/application/appointment/bloc/appointment_event.dart';
import 'package:frontend/application/appointment/bloc/appointment_state.dart';
import 'package:frontend/presentation/appointments/components/add_appointmentpage.dart';
import '../../../../../../core/constants/assets.dart';
import 'appointment_item.dart';

class AppointmentsBody extends StatefulWidget {
  final AppointmentBloc appointmentBloc;

  const AppointmentsBody({Key? key, required this.appointmentBloc});

  @override
  _AppointmentsBodyState createState() => _AppointmentsBodyState();
}

class _AppointmentsBodyState extends State<AppointmentsBody> {
  @override
  Widget build(BuildContext context) {
    print("appointments body build called");
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              Assets.assetsImagesEllipse55,
              scale: 5,
            ),
          ),
          // plus button
          BlocProvider<AppointmentBloc>.value(
            value: widget.appointmentBloc,
            child: Body(appointmentBloc: widget.appointmentBloc),
          ),
          const PlusButton(),
          // background
        ],
      ),
    );
  }
}

class Body extends StatefulWidget {
  final AppointmentBloc appointmentBloc;

  const Body({Key? key, required this.appointmentBloc});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var appointments = [];

  Future<void> fetchApps(String userId) async {
    print("fetching apps");
    widget.appointmentBloc.add(AppointmentEventGetByUser(userId));
  }

  @override
  void initState() {
    super.initState();
    fetchApps('6474824cebecd37a7abd4cb3');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentBloc, AppointmentState>(
        builder: (context, state) {
      if (state is AppointmentStateInitial) {
        return CircularProgressIndicator();
      } else if (state is AppointmentStateSuccessMultiple) {
        appointments = state.appointments;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 3.0),
            itemCount: appointments.length,
            itemBuilder: (context, index) {
              final note = appointments[index];
              return AppointmentItem(
                title: note.title,
                body: note.body,
                date: note.date,
              );
            },
          ),
        );
      } else if (state is AppointmentStateFailure) {
        return Center(
            child: Text(
                'Failed to load Appointments: ${state.failure.toString()}'));
      }
      return Scaffold(
        body: Text("Failed to load notes."),
      );
    });
  }
}

class PlusButton extends StatelessWidget {
  const PlusButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: 10,
      child: InkWell(
        // borderRadius: BorderRadius.circular(100),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddAppointmentPage(),
              ));
        },
        child: Stack(children: [
          Image.asset(
            Assets.assetsImagesEllipse8,
            scale: 3.5,
          ),
          const Positioned(
              // increase the size of the icon

              top: 24,
              left: 24,
              child: Center(child: Icon(size: 40, Icons.add)))
        ]),
      ),
    );
  }
}
