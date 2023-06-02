import 'package:flutter/material.dart';
import 'package:frontend/presentation/BabyStatus/Body/data.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/assets.dart';
import '../../core/constants/color.dart';

class BabyStatusBody extends StatelessWidget {
  const BabyStatusBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: SafeArea(
        child: Column(
          children: [
            const AppBar(),
            Expanded(
              child: DefaultTabController(
                length: monthDataList.length,
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelColor: kPrimaryColor,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: kPrimaryColor,
                      tabs: monthDataList.map((monthData) {
                        return Tab(
                          child: Text("Month ${monthData.month}"),
                        );
                      }).toList(),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: monthDataList.map((monthData) {
                          return ImageAndTexts(
                            size: size,
                            monthData: monthData,
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageAndTexts extends StatelessWidget {
  const ImageAndTexts({
    Key? key,
    required this.size,
    required this.monthData,
  }) : super(key: key);

  final Size size;
  final MonthDataModel monthData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Assets.assetsImagesBabyImage),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    monthData.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    monthData.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Add your action here
                    },
                    child: const Text(
                      "Learn More",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class MonthsList extends StatelessWidget {
  final List<MonthDataModel> monthDataList;
  const MonthsList({
    Key? key,
    required this.size,
    required this.monthDataList,
  }) : super(key: key);

  final Size size;
  final int currentMonth = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: monthDataList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: monthDataList[index].month == currentMonth
                  ? kPrimaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: Center(
              child: Text(
                "Month ${monthDataList[index].month}",
                style: TextStyle(
                  color: monthDataList[index].month == currentMonth
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
