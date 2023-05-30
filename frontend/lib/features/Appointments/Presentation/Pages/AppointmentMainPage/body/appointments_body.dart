import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets.dart';
import '../../AddApointmentPage/add_appointment_page.dart';
import 'appointment_item.dart';

class AppointmentsBody extends StatelessWidget {
  const AppointmentsBody({super.key});

  @override
  Widget build(BuildContext context) {
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
              )),
          const Body(),
          // plus button
          const PlusButton(),
          // background
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
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // const Text(
            //   "month 2023",
            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     const DayDateItem(),
            //     const DayDateItem(),
            //     DayDateItem(
            //       backColor: HexColor("#2EC7E9"),
            //     ),
            //     const DayDateItem(),
            //     const DayDateItem()
            //   ],
            // ),
            AppointmentItem(size: size),
            AppointmentItem(size: size),
          ],
        ),
      ),
    );
  }
}

class PlusButton extends StatelessWidget {
  const PlusButton({
    super.key,
  });

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
            scale: 3,
          ),
          const Positioned(
              top: 15,
              left: 35,
              child: Center(
                  child: Text(
                "+",
                style: TextStyle(color: Colors.white, fontSize: 50),
              )))
        ]),
      ),
    );
  }
}
