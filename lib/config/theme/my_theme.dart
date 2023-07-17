import 'package:arre_assignment_flutter/config/theme/theme_manager.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAppTheme {
  var th = theme.currentTheme;

  /// Current Theme of the App
  ThemeData myAppTheme() {
    return ThemeData(
        primaryColor: th.primaryColor,
        scaffoldBackgroundColor: th.scaffoldBackgroundColor,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android:
                CustomPageTransitionsBuilder(), // Customize transitions for Android
            TargetPlatform.iOS:
                CustomPageTransitionsBuilder(), // Customize transitions for iOS
          },
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          elevation: 0,
          toolbarHeight: 87,
          centerTitle: false,
          titleTextStyle: tstyle.appBarTitleTextStyle,
          backgroundColor: th.appBackgroundColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: th.statusBarColor,
            statusBarBrightness: Brightness.light,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: th.btnBackgroundColor,
            padding: const EdgeInsets.all(13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ));
  }
}

MyAppTheme myAppTheme = MyAppTheme();

class CustomPageTransitionsBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(animation),
      child: child,
    );
  }
}
