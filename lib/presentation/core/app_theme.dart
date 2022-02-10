import 'package:flutter/material.dart';

const borderRadius = 8.0;
const elevationOfAppBar = 5.0;
const borderWidthWhenActive = 2.0;
const mainColor = Colors.amber;
const secondaryColor = Colors.black87;
const googleColor = Colors.blue;

class AppTheme {
  buildLightTheme() {
    return ThemeData.light().copyWith(
      iconTheme: _buildIconTheme(),
      primaryColor: _buildPrimaryColor(),
      appBarTheme: buildAppBarTheme(),
      outlinedButtonTheme: _buildOutlinedButtonDecoration(),
      elevatedButtonTheme: _buildElevatedButtonDecoration(),
      inputDecorationTheme: buildInputDecorationTheme(),
      colorScheme: _buildColorScheme(),
    );
  }
}

IconThemeData _buildIconTheme() => const IconThemeData(color: mainColor);

MaterialColor _buildPrimaryColor() => mainColor;

AppBarTheme buildAppBarTheme() {
  return const AppBarTheme(
    foregroundColor: secondaryColor,
    backgroundColor: mainColor,
    elevation: elevationOfAppBar,
  );
}

OutlinedButtonThemeData _buildOutlinedButtonDecoration() {
  return OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: mainColor[300],
      onPrimary: secondaryColor,
    ),
  );
}

ElevatedButtonThemeData _buildElevatedButtonDecoration() {
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: googleColor[400],
    onPrimary: secondaryColor,
  ));
}

InputDecorationTheme buildInputDecorationTheme() {
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

ColorScheme _buildColorScheme() => ColorScheme.fromSwatch().copyWith(secondary: secondaryColor);
