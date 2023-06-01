import 'package:flutter/material.dart';

class Linkcard extends StatelessWidget {
  // create a variable for icon type
  final String icon;

  const Linkcard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SizedBox(
        // add icon as a child
        child: Icon(
          icon == 'facebook'
              ? Icons.facebook
              : icon == 'mail'
                  ? Icons.mail
                  : icon == 'instagram'
                      ? Icons.people
                      : Icons.link,
          size: 80,
        ),
        width: double.infinity,
        height: 200.0,
      ),
    );
  }
}
