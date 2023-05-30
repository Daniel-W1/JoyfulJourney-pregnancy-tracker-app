import 'package:flutter/material.dart';
import 'package:tips/core/constants/assets.dart';

import '../../MockData/tips_model.dart';
import 'Widgets/detail_body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.tipsModel});
  final TipsModel tipsModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: detailAppBar(size, context),
      body: DetailBody(
        tipsModel: tipsModel,
      ),
    );
  }

  PreferredSize detailAppBar(Size size, BuildContext context) {
    return PreferredSize(
        preferredSize: Size(size.width, 50),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 27),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
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
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {},
              child: Image.asset(
                Assets.assetsImagesSearch,
                width: 36,
                height: 36,
              ),
            )
          ]),
        )));
  }
}
