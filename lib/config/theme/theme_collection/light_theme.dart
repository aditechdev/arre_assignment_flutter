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
}
