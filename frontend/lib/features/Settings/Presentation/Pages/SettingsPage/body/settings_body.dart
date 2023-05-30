import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/Themes/bloc/theme_changer_bloc.dart';
import '../../../../../../core/constants/color.dart';
import '../../../../../../injection_container.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SettingsAppBar(
          size: size,
        ),
        Text(
          "Change App Theme",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              color: themeData.colorScheme.onSecondary),
        ),
        const AppThemeChanger()
      ],
    );
  }
}

class AppThemeChanger extends StatefulWidget {
  const AppThemeChanger({
    super.key,
  });

  @override
  State<AppThemeChanger> createState() => _AppThemeChangerState();
}

class _AppThemeChangerState extends State<AppThemeChanger> {
  late ThemeChangerBloc _themeChangerBloc;
  @override
  void initState() {
    _themeChangerBloc = getI<ThemeChangerBloc>();
    super.initState();
  }

  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Light",
            style: TextStyle(color: themeData.colorScheme.onSecondary)),
        BlocBuilder<ThemeChangerBloc, ThemeChangerState>(
          builder: (context, state) {
            return Switch(
              value: state is ThemeChangedToDark,
              overlayColor: MaterialStatePropertyAll(kPrimaryColor),
              trackColor: const MaterialStatePropertyAll(Colors.grey),
              thumbColor: MaterialStatePropertyAll(kPrimaryColor),
              onChanged: (bool value) {
                setState(() {
                  if (value) {
                    _themeChangerBloc.add(ChangeToDarkTheme());
                  } else {
                    _themeChangerBloc.add(ChangeToLightTheme());
                  }
                });
              },
            );
          },
        ),
        Text("Dark",
            style: TextStyle(color: themeData.colorScheme.onSecondary)),
      ],
    );
  }
}

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: size.width,
      decoration: BoxDecoration(color: kPrimaryColor),
      child: SafeArea(
          child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          const Text(
            "Settings",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
