import 'package:flutter/material.dart';

import '../../../../../../core/utils/hex_color.dart';

class DateMonthYearPicker extends StatefulWidget {
  const DateMonthYearPicker({
    super.key,
  });

  @override
  State<DateMonthYearPicker> createState() => _DateMonthYearPickerState();
}

class _DateMonthYearPickerState extends State<DateMonthYearPicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectDate(context);
      },
      child: Container(
        height: 52,
        margin: const EdgeInsets.all(10),
        color: HexColor("#D9D9D9"),
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
                    selectedDate.day.toString(),
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
                    selectedDate.month.toString(),
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
                    selectedDate.year.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Text(""),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
