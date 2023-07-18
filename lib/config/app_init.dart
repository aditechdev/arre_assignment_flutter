import 'package:arre_assignment_flutter/main.dart';
import 'package:color_log/color_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future appInit() async {
  // All the services that need to start before run App

  clog.info("App Started Successfully");
  runApp(const ProviderScope(child: MyApp()));
}
