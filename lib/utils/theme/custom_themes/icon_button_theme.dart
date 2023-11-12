import 'package:flutter/material.dart';
import 'package:task_tracker/utils/colors.dart';

class ZIconButtonTheme{

  ZIconButtonTheme._();

  static final lightIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
    ),
  );

  static final darkIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
    ),
  );
}