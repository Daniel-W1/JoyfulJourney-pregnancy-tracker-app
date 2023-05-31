import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_changer_event.dart';
part 'theme_changer_state.dart';

class ThemeChangerBloc extends Bloc<ThemeChangerEvent, ThemeChangerState> {
  ThemeChangerBloc() : super(ThemeChangerInitial()) {
    on<ThemeChangerEvent>((event, emit) {
      if (event is ChangeToDarkTheme) emit(ThemeChangedToDark());
      if (event is ChangeToLightTheme) emit(ThemeChangedToLight());
    });
  }
}
