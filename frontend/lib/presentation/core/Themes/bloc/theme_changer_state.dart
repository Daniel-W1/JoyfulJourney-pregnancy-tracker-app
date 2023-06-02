part of 'theme_changer_bloc.dart';

abstract class ThemeChangerState extends Equatable {
  const ThemeChangerState();

  @override
  List<Object> get props => [];
}

class ThemeChangerInitial extends ThemeChangerState {}

class ThemeChangedToDark extends ThemeChangerState {}

class ThemeChangedToLight extends ThemeChangerState {}
