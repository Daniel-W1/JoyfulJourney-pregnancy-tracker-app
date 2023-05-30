import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tips/core/constants/assets.dart';

import 'bloc/page_provider_bloc.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    BlocProvider.of<PageProviderBloc>(context).add(const LoadPageEvent(0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //  return const HomePage();

    return BlocBuilder<PageProviderBloc, PageProviderState>(
      builder: (context, state) {
        ThemeData theme = Theme.of(context);
        if (state is SelectedPage) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.background,
            body: state.page,
            bottomNavigationBar: SalomonBottomBar(
              currentIndex: state.currentIndex,
              onTap: (i) =>
                  context.read<PageProviderBloc>().add(LoadPageEvent(i)),
              items: [
                SalomonBottomBarItem(
                  icon: Image.asset(
                    Assets.assetsImagesHome,
                    height: 19,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(color: theme.colorScheme.onSecondary),
                  ),
                  //selectedColor: Colors.orange,
                ),
                SalomonBottomBarItem(
                  icon: Image.asset(
                    Assets.assetsImagesCommunity,
                    height: 19,
                  ),
                  title: Text("Community",
                      style: TextStyle(color: theme.colorScheme.onSecondary)),
                  //    selectedColor: theme.colorScheme.onSecondary,
                ),
                SalomonBottomBarItem(
                  icon: Image.asset(
                    Assets.assetsImagesMore,
                    height: 19,
                  ),
                  title: Text("Other",
                      style: TextStyle(color: theme.colorScheme.onSecondary)),
                ),
              ],
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
