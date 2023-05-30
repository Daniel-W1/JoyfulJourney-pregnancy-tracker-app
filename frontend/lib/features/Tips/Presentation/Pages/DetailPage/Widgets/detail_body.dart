import 'package:flutter/material.dart';

import '../../../../../../core/utils/hex_color.dart';
import '../../../MockData/tips_model.dart';
import 'article_body.dart';
import 'article_image_holder.dart';

class DetailBody extends StatefulWidget {
  const DetailBody({super.key, required this.tipsModel});
  final TipsModel tipsModel;
  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  final smallTxtStyle = TextStyle(color: HexColor("#6E798C"), fontSize: 11);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 440,
              width: size.width,
              decoration: BoxDecoration(
                  color: themeData.colorScheme.secondary,
                  boxShadow: [
                    BoxShadow(
                        color: themeData.colorScheme.shadow,
                        blurRadius: 10,
                        spreadRadius: 4,
                        offset: const Offset(0, 10))
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  // image mini card
                  ImageHolder(widget: widget),

                  // media and date
                  ArticleBody(smallTxtStyle: smallTxtStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
