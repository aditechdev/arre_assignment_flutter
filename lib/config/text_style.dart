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
