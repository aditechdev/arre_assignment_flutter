import 'package:color_log/color_log.dart';
import 'package:flutter/material.dart';

class AppLifecycleObserver extends WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        clog.info("App Resumed");
        break;

      case AppLifecycleState.inactive:
        clog.info("App inactive");
        break;

      case AppLifecycleState.paused:
        clog.info("App paused");
        break;

      case AppLifecycleState.detached:
        clog.info("App detached");
        break;
    }
  }
}
