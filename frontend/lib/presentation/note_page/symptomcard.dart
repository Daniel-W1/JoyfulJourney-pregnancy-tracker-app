import 'package:flutter/material.dart';

class SymptomCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  SymptomCard(
      {required this.title,
      required this.description,
      required this.date,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        // align the children to left
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 1,
            color: Colors.black,
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            date,
            style: TextStyle(
              color: Color.fromARGB(255, 102, 95, 95),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
