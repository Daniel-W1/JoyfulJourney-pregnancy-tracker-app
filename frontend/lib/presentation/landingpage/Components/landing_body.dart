import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'choice_lists.dart';
import 'cool_text.dart';

class LandingBody extends StatelessWidget {
  const LandingBody({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: size.width,
        child: Column(
          children: [
            LandingAppBar(size: size),
            CoolText(themeData: themeData),
            const ChoiceLists()
          ],
        ),
      ),
    );
  }
}
