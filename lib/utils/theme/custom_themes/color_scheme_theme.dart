import 'package:flutter/material.dart';
import 'package:task_tracker/utils/colors.dart';

class ZColorSchemeTheme {
  ZColorSchemeTheme._();

  static final lightColorSchemeTheme = ColorScheme(
      brightness: Brightness.light,
      primary: successColor,
      onPrimary: lightBgColor,
      secondary: lightBgColor1,
      onSecondary: lightBgColor2,
      error: dangerColor,
      onError: dangerColor,
      background: lightBgColor,
      onBackground: Colors.black,
      surface: lightBgColor1,
      onSurface: lightBgColor2,
  );
  static final darkColorSchemeTheme = ColorScheme(
    brightness: Brightness.dark,
    primary: successColor,
    onPrimary: darkBgColor,
    secondary: darkBgColor1,
    onSecondary: darkBgColor2,
    error: dangerColor,
    onError: dangerColor,
    background: darkBgColor,
    onBackground: Colors.white,
    surface: darkBgColor1,
    onSurface: darkBgColor2,
  );
}