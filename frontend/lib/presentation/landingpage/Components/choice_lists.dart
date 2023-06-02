import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
              onPressed: () {
                GoRouter.of(context).go('/tips');
              },
              text: 'TIPS',
            ),
            const SizedBox(width: 10),
            LandingChoiceCard(
              imagePath: Assets.assetsImagesAppointmentImage,
              onPressed: () {
                GoRouter.of(context).go('/appointments');
              },
              text: 'APPOINTMENTS',
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LandingChoiceCard(
              imagePath: Assets.assetsImagesCalendarImage,

              onPressed: () {
                GoRouter.of(context).go('/calendar');
              },
              text: 'CALENDAR',
            ),
            const SizedBox(width: 10),
            LandingChoiceCard(
              imagePath: Assets.assetsImagesSymptomsImage,
              onPressed: () {
                GoRouter.of(context).go('/notes');
              },
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
        height: size.height / 4,
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
