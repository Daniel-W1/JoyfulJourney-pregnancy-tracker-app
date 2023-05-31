import 'package:flutter/material.dart';

import '../../../../../../core/utils/hex_color.dart';

class AppointmentItem extends StatelessWidget {
  final String title;
  final String body;
  final String date;

  const AppointmentItem(
      {super.key, required this.title, required this.body, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(title),
                      SizedBox(
                        height: 10,
                      ),
                      Text(body),
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text(date)],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
