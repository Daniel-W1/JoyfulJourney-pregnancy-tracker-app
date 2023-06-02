import 'package:flutter/material.dart';

import 'Body/baby_status_body.dart';

class BabyStatusPage extends StatelessWidget {
  const BabyStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: BabyStatusBody(),
    );
  }
}
