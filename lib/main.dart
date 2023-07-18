import 'package:arre_assignment_flutter/config/app_init.dart';
import 'package:arre_assignment_flutter/config/routes/app_routes.dart';
import 'package:arre_assignment_flutter/config/routes/route_path.dart';
import 'package:arre_assignment_flutter/config/theme/my_theme.dart';
import 'package:arre_assignment_flutter/cors/common_utils.dart';
import 'package:flutter/material.dart';

void main() {
  appInit();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: cUtils.scaffoldMessengerKey,
      title: 'Arre',
      debugShowCheckedModeBanner: false,
      theme: myAppTheme.myAppTheme(),
      initialRoute: Routes.splashScreen,
      routes: AppRoutes.routes,
    );
  }
}
