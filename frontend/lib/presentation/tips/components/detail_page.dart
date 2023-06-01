import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/tip/bloc/tip_bloc.dart';
import '../../../application/tip/bloc/tip_event.dart';
import '../../../infrastructure/tip/tip_api.dart';
import '../../../infrastructure/tip/tip_repository.dart';
import '../../core/constants/assets.dart';
import 'tips_model.dart';
import 'detail_body.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.tipsModel, required this.type});
  final TipsModel tipsModel;
  final String type;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: detailAppBar(size, context),
      body: DetailBody(
        tipsModel: widget.tipsModel,
        type: widget.type,
      ),
    );
  }

  PreferredSize detailAppBar(Size size, BuildContext context) {
    return PreferredSize(
        preferredSize: Size(size.width, 50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
        ));
  }
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

