import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tips/injection_container.dart';

import '../../../../../core/Themes/bloc/theme_changer_bloc.dart';
import 'body/settings_body.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late ThemeChangerBloc _themeChangerBloc;
  @override
  void initState() {
    _themeChangerBloc = getI<ThemeChangerBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _themeChangerBloc,
      child: const Scaffold(
        body: SettingsBody(),
      ),
    );
  }
}
