import 'package:arre_assignment_flutter/config/theme/abstract_theme.dart';
import 'package:flutter/material.dart';

class LightThemeColors implements ColorTheme {
  @override
  Color get primaryColor => Colors.white;

  @override
  Color get appBackgroundColor => const Color(0xff232C36);

  @override
  Color get statusBarColor => const Color(0xff171E26);

  @override
  Color get scaffoldBackgroundColor => const Color(0xff171E26);

  @override
  Color get appBarShadowColor => const Color(0xff41595C);

  @override
  Color get appBarTitleColor => const Color(0xffE4F1EE);

  @override
  Color get btnBackgroundColor => const Color(0xff1E2630);

  @override
  Color get btnTextColor => const Color(0xffBCC8C8);

  @override
  Color get versionTextColor => const Color(0xff4BC7B6);

  @override
  Color get bottomSheetBackgroundColor => const Color(0xff171E26);

  @override
  Color get bottomSheetDragHandlerColor => Colors.white;

  @override
  Color get bottomSheetNegativeBtnTextColor => const Color(0xff6B9391);

  @override
  Color get bottomSheetPositiveBtnBackground => const Color(0xff4BC7B6);

  @override
  Color get bottomSheetPositiveBtnTextColor => const Color(0xffFFFFFF);

  @override
  Color get bottomSheetDescTextColor => const Color(0xff7E878A);

  @override
  Color get bottomSheetTitleTextColor => const Color(0xffE4F1EE);

  @override
  Color get languageSheetActiveColor => const Color(0xffEE8C34);

  @override
  Color get languageSheetInactiveColor => const Color(0xff496267);
  @override
  Color get languageSheetInactiveTitleColor => const Color(0xff4BC7B6);
  @override
  Color get languageSheetInactiveDescriptionColor => const Color(0xff3F9890);

  @override
  Color get langaugeSheetBoxColor => const Color(0xff232C36);
}
