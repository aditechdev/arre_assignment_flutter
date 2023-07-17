import 'package:arre_assignment_flutter/config/routes/route_path.dart';
import 'package:arre_assignment_flutter/features/my_account_screen.dart';
import 'package:arre_assignment_flutter/features/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    Routes.splashScreen: (context) => const SplashScreen(),
    Routes.myAccountScreen: (context) => const MyAccountScreen(),
  };
}
