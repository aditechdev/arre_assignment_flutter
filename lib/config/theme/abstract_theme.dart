import 'package:flutter/material.dart';

abstract class ColorTheme {
  Color get primaryColor;

  // Appbar Color
  Color get appBackgroundColor;
  Color get statusBarColor;
  Color get appBarShadowColor;

  // Scafold
  Color get scaffoldBackgroundColor;
}
