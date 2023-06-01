import 'package:flutter/material.dart';

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
      height: 240,
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
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage(Assets.assetsImagesWomanProfile),
                        ),
                        Text(
                          "Welcome to the...,",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Dianna",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
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
