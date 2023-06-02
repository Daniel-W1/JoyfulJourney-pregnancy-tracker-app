import 'package:flutter/material.dart';
import '../../core/constants/assets.dart';

class ChoiceLists extends StatelessWidget {
  const ChoiceLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LandingChoiceCard(
              imagePath: Assets.assetsImagesTipsImage,
              onPressed: () {},
              text: 'TIPS',
            ),
            const SizedBox(width: 4),
            LandingChoiceCard(
              imagePath: Assets.assetsImagesAppointmentImage,
              onPressed: () {},
              text: 'Appointment',
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LandingChoiceCard(
              imagePath: Assets.assetsImagesCalendarImage,
              onPressed: () {},
              text: 'CALENDAR',
            ),
            const SizedBox(width: 4),
            LandingChoiceCard(
              imagePath: Assets.assetsImagesSymptomsImage,
              onPressed: () {},
              text: 'NOTES',
            ),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

class LandingChoiceCard extends StatelessWidget {
  const LandingChoiceCard({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
  });
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size.height / 3,
        width: size.width / 2.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(imagePath))),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "$text\n",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            )),
      ),
    );
  }
}
