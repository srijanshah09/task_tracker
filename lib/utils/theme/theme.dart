import 'package:flutter/material.dart';
import 'package:task_tracker/utils/colors.dart';
import 'package:task_tracker/utils/theme/custom_themes/appbar_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/bottom_nav_bar_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/chip_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/color_scheme_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/floating_action_button_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/icon_button_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/icon_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/text_field_theme.dart';
import 'package:task_tracker/utils/theme/custom_themes/text_theme.dart';

class ZAppTheme{
  ZAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: successColor,
    scaffoldBackgroundColor: lightBgColor,
    textTheme: ZTextTheme.lightTextTheme,
    chipTheme: ZChipTheme.lightChipTheme,
    appBarTheme: ZAppBarTheme.lightAppBarTheme,
    checkboxTheme: ZCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: ZBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: ZElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ZOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ZTextFormFieldTheme.lightInputDecorationTheme,
    floatingActionButtonTheme: ZFloatingActionButtonTheme.lightFloatingActionButtonTheme,
    bottomNavigationBarTheme: ZBottomNavigationBarTheme.lightBottomNavigationBarTheme,
    colorScheme: ZColorSchemeTheme.lightColorSchemeTheme,
    iconButtonTheme: ZIconButtonTheme.lightIconButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: successColor,
    scaffoldBackgroundColor: darkBgColor,
    textTheme: ZTextTheme.darkTextTheme,
    iconTheme: ZIconTheme.darkIconTheme,
    chipTheme: ZChipTheme.darkChipTheme,
    appBarTheme: ZAppBarTheme.darkAppBarTheme,
    checkboxTheme: ZCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: ZBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: ZElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ZOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ZTextFormFieldTheme.darkInputDecorationTheme,
    floatingActionButtonTheme: ZFloatingActionButtonTheme.darkFloatingActionButtonTheme,
    bottomNavigationBarTheme: ZBottomNavigationBarTheme.darkBottomNavigationBarTheme,
    colorScheme: ZColorSchemeTheme.darkColorSchemeTheme,
    iconButtonTheme: ZIconButtonTheme.darkIconButtonTheme,
  );
}