import 'package:flutter/material.dart';

abstract class ColorTheme {
  Color get primaryColor;

  // Appbar Color
  Color get appBackgroundColor;
  Color get statusBarColor;
  Color get appBarShadowColor;
  Color get appBarTitleColor;

  // Scafold
  Color get scaffoldBackgroundColor;

  // Solid Button
  Color get btnBackgroundColor;
  Color get btnTextColor;

  //Other
  Color get versionTextColor;
}
