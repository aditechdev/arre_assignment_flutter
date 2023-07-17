import 'package:flutter/services.dart';
import 'package:package_info/package_info.dart';

class SystemBloc {
  /// This will show the status bar of App
  enableStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  /// This will hide the status bar of App
  disableStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  Future<String> getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    // setState(() {
    //   _appVersion = packageInfo.version;
    // });
    return packageInfo.version;
  }
}

SystemBloc systemBloc = SystemBloc();
