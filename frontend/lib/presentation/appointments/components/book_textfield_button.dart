import 'package:flutter/material.dart';
import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';

import '../../../../../../core/utils/hex_color.dart';

class BookTextFieldButton extends StatelessWidget {
  final AppointmentBloc appointmentBloc;
  const BookTextFieldButton({super.key, required this.appointmentBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: HexColor("#DDDDDD")),
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
                child: TextField(
              decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none),
            )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send))
          ],
        ));
  }
}
