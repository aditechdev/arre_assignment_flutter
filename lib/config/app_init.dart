import 'package:arre_assignment_flutter/main.dart';
import 'package:color_log/color_log.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future appInit() async {
  // All the services that need to start before run App

  clog.info("App Started Successfully");
  runBydevicePreview(false);
}

runBydevicePreview([bool useDevicePreview = false]) {
  if (useDevicePreview) {
    runApp(ProviderScope(
        child: DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MyApp();
      },
    )));
  } else {
    runApp(const ProviderScope(child: MyApp()));
  }
}
