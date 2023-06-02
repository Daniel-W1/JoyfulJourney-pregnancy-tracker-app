part of 'theme_changer_bloc.dart';

abstract class ThemeChangerEvent extends Equatable {
  const ThemeChangerEvent();

  @override
  List<Object> get props => [];
}

class ChangeToLightTheme extends ThemeChangerEvent {}

class ChangeToDarkTheme extends ThemeChangerEvent {}
