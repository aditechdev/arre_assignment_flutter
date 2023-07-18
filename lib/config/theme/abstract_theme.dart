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

  //bottomsheet
  Color get bottomSheetBackgroundColor;
  Color get bottomSheetTitleTextColor;
  Color get bottomSheetDescTextColor;
  Color get bottomSheetDragHandlerColor;
  Color get bottomSheetPositiveBtnBackground;
  Color get bottomSheetPositiveBtnTextColor;
  Color get bottomSheetNegativeBtnTextColor;
  

  // BootomSheet Language Selection
  Color get languageSheetActiveColor;
  Color get languageSheetInactiveColor;
  Color get langaugeSheetBoxColor;
  Color get languageSheetInactiveTitleColor;
  Color get languageSheetInactiveDescriptionColor;
}
