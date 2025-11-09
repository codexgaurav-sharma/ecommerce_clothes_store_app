import 'package:clothes_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:clothes_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:clothes_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:clothes_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:clothes_app/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:clothes_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:clothes_app/utils/theme/custom_themes/text_theme.dart';
import 'package:clothes_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter/material.dart';

class GAppTheme {
  GAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GTextTheme.lightTextTheme,
    elevatedButtonTheme: GElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: GAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: GBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: GCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: GChipTheme.lightChipTheme,
    outlinedButtonTheme: GOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: GTextFieldTheme.lightTextFieldTheme

  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: GTextTheme.darkTextTheme,
    elevatedButtonTheme: GElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: GAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: GBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: GCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: GChipTheme.darkChipTheme,
    outlinedButtonTheme: GOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: GTextFieldTheme.darkTextFieldTheme
  );
}
