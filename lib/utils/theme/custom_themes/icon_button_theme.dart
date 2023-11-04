import 'package:flutter/material.dart';

class ZIconButtonTheme{

  ZIconButtonTheme._();

  static final lightIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(Colors.black),
    ),
  );

  static final darkIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(Colors.white),
    ),
  );
}