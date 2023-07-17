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
}
