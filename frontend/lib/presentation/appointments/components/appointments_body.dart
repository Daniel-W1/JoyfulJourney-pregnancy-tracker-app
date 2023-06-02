import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';
import 'package:frontend/application/appointment/bloc/appointment_event.dart';
import 'package:frontend/application/appointment/bloc/appointment_state.dart';
import 'package:frontend/local_data/shared_preferences/jj_shared_preferences_service.dart';
import 'package:frontend/presentation/appointments/components/add_appointmentpage.dart';
import '../../core/constants/assets.dart';
import 'appointment_item.dart';

class AppointmentsBody extends StatefulWidget {
  const AppointmentsBody({Key? key});

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
          Body(),
          const PlusButton(),
          // background
        ],
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late AppointmentBloc appointmentBloc;
  var appointments = [];
  final SharedPreferenceService service = SharedPreferenceService();

  @override
  void initState() {
    super.initState();
    appointmentBloc = BlocProvider.of<AppointmentBloc>(context);
    service.getProfileId().then((value) => fetchApps(value!),);
    // fetchApps('6474824cebecd37a7abd4cb3');
  }

  Future<void> fetchApps(String userId) async {
    print("fetching apps");
    appointmentBloc.add(AppointmentEventGetByUser(userId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppointmentBloc, AppointmentState>(
      listener: (context, state) {
        if (state is AppointmentStateSuccess ||
            state is AppointmentStateDeleted) {
          service.getProfileId().then((value) => fetchApps(value!),);
        }
      },
      bloc: appointmentBloc,
      builder: (context, state) {
        if (state is AppointmentStateInitial) {
          return Center(child: CircularProgressIndicator());
        } else if (state is AppointmentStateLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is AppointmentStateSuccessMultiple) {
          appointments = state.appointments.reversed.toList();

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 3.0),
              itemCount: appointments.length,
              itemBuilder: (context, index) {
                final note = appointments[index];
                // print(note.time);
                // print("--------------------------------------------");
                return AppointmentItem(
                  title: note.title,
                  body: note.body,
                  date: note.date,
                  appointmentId: note.id,
                  time: note.time,
                );
              },
            ),
          );
        } else if (state is AppointmentStateFailure) {
          return Center(
            child: Text(
              'Failed to load Appointments: ${state.failure.toString()}',
            ),
          );
        }
        return Scaffold(
          body: Text("Failed to load notes."),
        );
      },
    );
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
