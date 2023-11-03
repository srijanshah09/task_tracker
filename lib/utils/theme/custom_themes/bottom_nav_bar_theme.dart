import 'package:flutter/material.dart';
import 'package:task_tracker/utils/colors.dart';

class ZBottomNavigationBarTheme{
  ZBottomNavigationBarTheme._();

  static final lightBottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: lightBgColor2,
    selectedItemColor: successColor,
    unselectedItemColor: Colors.black,
  );

  static final darkBottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: darkBgColor2,
    selectedItemColor: successColor,
    unselectedItemColor: Colors.white,
  );
}