import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:widget_formato/config/theme/app_theme.dart';

//Listado de colores inmutable
final colorListProvider = Provider((ref) =>  colorList);

//un simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme(custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
  );

  //Controller o Notifier
  class ThemeNotifier extends StateNotifier<AppTheme>{
    //STATE = Estado = new AppThene();
    ThemeNotifier(): super(AppTheme());

    void toggleDarkMode(){
      state = state.copyWith(isDarkmode: !state.isDarkmode);
    }

    void changeColorIndex(int colorIndex){
      state = state.copyWith(selectedColor: colorIndex);
    }
  }