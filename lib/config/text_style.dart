import 'package:arre_assignment_flutter/config/theme/theme_manager.dart';
import 'package:arre_assignment_flutter/constant/font_constant.dart';
import 'package:flutter/material.dart';

var th = theme.currentTheme;

TextStyle appBarTitleTextStyle = TextStyle(
  fontSize: 14,
  color: th.appBarTitleColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.bold,
);
TextStyle btnTextStyle = TextStyle(
  fontSize: 14,
  color: th.btnTextColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.w700,
);
TextStyle txtBtnTextStyle = TextStyle(
  fontSize: 14,
  color: th.btnTextColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.w400,
);

TextStyle versionTextStyle = TextStyle(
    fontSize: 14,
    color: th.versionTextColor,
    fontFamily: fontAcumin,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
    decorationColor: th.versionTextColor);

TextStyle btmSheetLanguageTitle = TextStyle(
  fontSize: 20,
  color: th.bottomSheetTitleTextColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.w700,
);

TextStyle btmSheetLanguageDescription = TextStyle(
  fontSize: 14,
  color: th.bottomSheetDescTextColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.w400,
);

TextStyle btmSheetPositiveButtonTextStyle = TextStyle(
  fontSize: 14,
  color: th.bottomSheetPositiveBtnTextColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.w700,
);

TextStyle btmSheetNegativeButtonTextStyle = TextStyle(
  fontSize: 14,
  color: th.bottomSheetNegativeBtnTextColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.w700,
);

TextStyle languageSheetActiveTextStyle = TextStyle(
  fontSize: 12,
  color: th.languageSheetActiveColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.w400,
);

TextStyle languageSheetInActiveTitleTextStyle = TextStyle(
  fontSize: 12,
  color: th.languageSheetInactiveTitleColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.w400,
);
TextStyle languageSheetInActiveDescTextStyle = TextStyle(
  fontSize: 12,
  color: th.languageSheetInactiveDescriptionColor,
  fontFamily: fontAcumin,
  fontWeight: FontWeight.w400,
);
