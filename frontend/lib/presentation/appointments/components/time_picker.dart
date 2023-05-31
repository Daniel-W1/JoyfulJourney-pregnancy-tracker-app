import 'package:flutter/material.dart';
import 'package:frontend/core/utils/hex_color.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({
    super.key,
  });

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay? selectedTime;
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedS = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
        child: child!,
      ),
    );

    setState(() {
      selectedTime = pickedS;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectTime(context);
      },
      child: Container(
        height: 40,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: HexColor("#D9D9D9"),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(""),
                  Text(
                    "${selectedTime?.hour ?? "00"}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const VerticalDivider()
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(""),
                  Text(
                    "${selectedTime?.minute ?? "00"}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const VerticalDivider()
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  Text(
                    "PM",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(""),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
