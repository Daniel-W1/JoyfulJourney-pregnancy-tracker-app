import 'package:flutter/material.dart';

import '../../core/utils/hex_color.dart';

class TimePicker extends StatefulWidget {
  final Function(String) onTimeSelected; // New callback function

  const TimePicker({
    Key? key,
    required this.onTimeSelected,
  }) : super(key: key);

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });

      // Call the onTimeSelected callback with the formatted time
      final formattedTime = _formatTime(picked);
      widget.onTimeSelected(formattedTime);
    }
  }

  String _formatTime(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectTime(context);
      },
      child: Container(
        height: 52,
        margin: const EdgeInsets.all(10),
        color: HexColor("#D9D9D9"),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '${selectedTime.hour}:${selectedTime.minute}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
