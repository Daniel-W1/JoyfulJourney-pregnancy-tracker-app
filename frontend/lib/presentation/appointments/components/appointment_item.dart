import 'package:flutter/material.dart';

import '../../../../../../core/utils/hex_color.dart';
import 'edit_appointment_dialog.dart';

class AppointmentItem extends StatelessWidget {
  final String title;
  final String body;
  final String date;
  final String time;
  final String appointmentId;

  const AppointmentItem(
      {Key? key,
      required this.title,
      required this.body,
      required this.date,
      required this.time,
      required this.appointmentId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return EditAppointmentDialog(
              appointmentId: this.appointmentId,
              initialTitle: title,
              initialBody: body,
              initialDate: date,
              initialTime: time,
            );
          },
        );
      },
      child: Container(
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: HexColor("#D83A3A"),
              child: const Text(
                "4",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: HexColor("#DDDDDD"),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        body,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(time), Text(date)],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
