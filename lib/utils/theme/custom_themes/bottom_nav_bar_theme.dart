import 'package:flutter/material.dart';
import 'package:task_tracker/utils/colors.dart';

class ZBottomNavigationBarTheme{
  ZBottomNavigationBarTheme._();

  static final lightBottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    selectedItemColor: successColor,
    unselectedItemColor: Colors.black,
  );

  static final darkBottomNavigationBarTheme = BottomNavigationBarThemeData(
    elevation: 0,
    selectedItemColor: successColor,
    unselectedItemColor: Colors.white,
  );
}