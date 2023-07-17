import 'package:flutter/services.dart';

class SystemBloc {
  /// This will show the status bar of App
  enableStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  /// This will hide the status bar of App
  disableStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
}

SystemBloc systemBloc = SystemBloc();
