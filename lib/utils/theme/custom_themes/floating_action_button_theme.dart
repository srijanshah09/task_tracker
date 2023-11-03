import 'package:flutter/material.dart';
import 'package:task_tracker/utils/colors.dart';

class ZFloatingActionButtonTheme{
  ZFloatingActionButtonTheme._();
  static final lightFloatingActionButtonTheme = FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
    splashColor: Colors.white.withOpacity(0.5),
    backgroundColor: successColor,
  );
  static final darkFloatingActionButtonTheme = FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
    splashColor: Colors.white.withOpacity(0.5),
    backgroundColor: successColor,
  );
}

