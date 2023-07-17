import 'package:arre_assignment_flutter/config/app_init.dart';
import 'package:arre_assignment_flutter/config/routes/app_routes.dart';
import 'package:arre_assignment_flutter/config/routes/route_path.dart';
import 'package:flutter/material.dart';

void main() {
  appInit();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arre',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.splashScreen,
      routes: AppRoutes.routes,
    );
  }
}
