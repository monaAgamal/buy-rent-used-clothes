import 'package:buy_rent_used_clothes/Theme/app_colors.dart';
import 'package:flutter/material.dart';

final appTheme = ThemeData(
  colorScheme: const ColorScheme(
    onError: onError,
    surface: surface,
    onBackground: onBackground,
    onSurface: onSurface,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    secondary: secondary,
    primary: primaryColor,
    error: errorColor,
    background: primaryColor,
    brightness: Brightness.light,
  ),
  errorColor: errorColor,
  scaffoldBackgroundColor: primaryColor,
   
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.all(16),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: textFieldBorderColor, width: 1),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: textFieldBorderColor, width: 1),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: textFieldBorderColor, width: 1),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: textFieldBorderColor, width: 1),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: textFieldBorderColor, width: 1),
    ),
  ),
);
