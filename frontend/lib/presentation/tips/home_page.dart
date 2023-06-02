import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/tip/bloc/tip_bloc.dart';
import 'package:frontend/infrastructure/tip/tip_api.dart';
import 'package:frontend/infrastructure/tip/tip_repository.dart';
import 'package:go_router/go_router.dart';
import 'components/detail_page.dart';
import 'package:frontend/presentation/core/constants/assets.dart';

import 'components/tips_card.dart';
import 'components/tips_model.dart';

class TipsHomePage extends StatefulWidget {
  const TipsHomePage({super.key});

  @override
  State<TipsHomePage> createState() => _TipsHomePageState();
}

class _TipsHomePageState extends State<TipsHomePage> {
  List<TipsModel> tipList = [
    TipsModel(
      imgPath: Assets.assetsImagesPlateOfHealthyFood,
      text: 'FOOD TIPS',
      id: '1',
      type: 'food',
    ),
    TipsModel(
      imgPath: Assets.assetsImagesHeartAndStethoscope,
      text: 'HEALTH TIPS',
      id: '2',
      type: 'health',
    ),
    TipsModel(
      imgPath: Assets.assetsImagesHappySmileyWithFlowers,
      text: 'PSYCHOLOGICAL TIPS',
      id: '3',
      type: 'psychology',
    ),
    TipsModel(
        imgPath: Assets.assetsImagesWoman,
        text: 'FITNESS TIPS',
        id: '4',
        type: 'fitness'),
  ];

  @override
  Widget build(BuildContext context) {
    TipAPI tipApi = TipAPI();
    TipRepository tipRepository = TipRepository(tipApi);
    TipBloc tipBloc = TipBloc(tipRepositoryInterface: tipRepository);

    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => tipBloc,
      
      child: SafeArea(
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
                    GoRouter.of(context).go('/landingpage');
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
                                type: tipList[index].type,
                              )));
                },
                id: tipList[index].id,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
