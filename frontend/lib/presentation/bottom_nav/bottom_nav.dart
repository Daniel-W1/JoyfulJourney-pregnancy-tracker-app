import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/presentation/core/Themes/light_theme.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


import '../../application/page_provider/bloc/page_provider_bloc.dart';
import '../core/constants/assets.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    BlocProvider.of<PageProviderBloc>(context, listen: false)
        .add(const LoadPageEvent(0));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //  return const HomePage();

    return BlocBuilder<PageProviderBloc, PageProviderState>(
      builder: (context, state) {
        ThemeData theme = LightTheme().getThemeData;
        if (state is SelectedPage) {
          return Scaffold(
            backgroundColor: Colors.white,
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
                  title: const Text("Home"),
                  //selectedColor: Colors.orange,
                ),
                SalomonBottomBarItem(
                  icon: Image.asset(
                    Assets.assetsImagesCommunity,
                    height: 19,
                  ),
                  title: const Text("Community"),
                  //    selectedColor: theme.colorScheme.onSecondary,
                ),
                SalomonBottomBarItem(
                  icon: Image.asset(
                    Assets.assetsImagesMore,
                    height: 19,
                  ),
                  title: const Text("Other"),
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
