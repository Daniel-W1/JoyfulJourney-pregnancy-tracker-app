import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/assets.dart';

class LandingAppBar extends StatelessWidget {
  const LandingAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Stack(
        children: [
          Container(
            height: 190,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.assetsImagesHalfBackgound),
                    fit: BoxFit.cover)),
            child: SafeArea(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => GoRouter.of(context).go('/profile'),
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage(Assets.assetsImagesFancyBack),
                          ),
                        ),
                        
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            child: CircleAvatar(
              radius: 50,
              child: Image.asset(Assets.assetsImagesJoyfulLogo),
            ),
          )
        ],
      ),
    );
  }
}
