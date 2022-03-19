import 'package:flutter/material.dart';

const borderRadius = 8.0;
const elevationOfAppBar = 5.0;
const borderWidthWhenActive = 2.0;
const mainColor = Colors.green;
const surfaceColor = Colors.grey;
const secondaryColor = Colors.black87;
const googleColor = Colors.blue;
const cancelColor = Colors.deepOrangeAccent;
const confirmColor = Colors.green;

class AppTheme {
  buildLightTheme() {
    return ThemeData.light().copyWith(
      iconTheme: _getIconTheme(),
      primaryColor: _getPrimaryColor(),
      appBarTheme: _getAppBarTheme(),
      outlinedButtonTheme: _getOutlinedButtonDecoration(),
      elevatedButtonTheme: _getElevatedButtonDecoration(),
      inputDecorationTheme: _getInputDecorationTheme(),
      colorScheme: _getColorScheme(),
    );
  }
}

IconThemeData _getIconTheme() => const IconThemeData(color: mainColor);

MaterialColor _getPrimaryColor() => mainColor;

AppBarTheme _getAppBarTheme() {
  return const AppBarTheme(
    foregroundColor: secondaryColor,
    backgroundColor: mainColor,
    elevation: elevationOfAppBar,
  );
}

OutlinedButtonThemeData _getOutlinedButtonDecoration() {
  return OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: mainColor[300],
      onPrimary: secondaryColor,
    ),
  );
}

ElevatedButtonThemeData _getElevatedButtonDecoration() {
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: googleColor[400],
    onPrimary: secondaryColor,
  ));
}

InputDecorationTheme _getInputDecorationTheme() {
  return InputDecorationTheme(
    labelStyle: const TextStyle(color: secondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: mainColor, width: borderWidthWhenActive),
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    ),
  );
}

ColorScheme _getColorScheme() {
  return ColorScheme.fromSwatch().copyWith(
      secondary: secondaryColor,
      primary: mainColor[300],
      surface: surfaceColor[100],
      onError: cancelColor,
      onPrimary: confirmColor);
}
