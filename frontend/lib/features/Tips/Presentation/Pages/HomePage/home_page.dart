import 'package:flutter/material.dart';
import 'package:tips/features/Tips/Presentation/Pages/DetailPage/detail_page.dart';
import 'package:tips/core/constants/assets.dart';

import '../../MockData/tips_model.dart';
import 'Widgets/tips_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TipsModel> tipList = [
    TipsModel(
      imgPath: Assets.assetsImagesPlateOfHealthyFood,
      text: 'FOOD TIPS',
      id: '1',
    ),
    TipsModel(
      imgPath: Assets.assetsImagesHeartAndStethoscope,
      text: 'HEALTH TIPS',
      id: '2',
    ),
    TipsModel(
      imgPath: Assets.assetsImagesHappySmileyWithFlowers,
      text: 'PSYCHOLOGICAL TIPS',
      id: '3',
    ),
    TipsModel(
      imgPath: Assets.assetsImagesWoman,
      text: 'FITNESS TIPS',
      id: '4',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          // app bar
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  Assets.assetsImagesArrow,
                  width: 36,
                  height: 36,
                ),
              ),
            ),
          ),

          Expanded(
              child: ListView.builder(
            itemCount: tipList.length,
            itemBuilder: (context, index) => TipcCard(
              size: size,
              imgPath: tipList[index].imgPath,
              text: tipList[index].text,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              tipsModel: tipList[index],
                            )));
              },
              id: tipList[index].id,
            ),
          ))
        ],
      ),
    );
  }
}
