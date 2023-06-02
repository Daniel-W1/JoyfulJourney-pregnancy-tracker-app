import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String description;

  const CommentCard({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
      child: Padding(
        // padding from left and right
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
