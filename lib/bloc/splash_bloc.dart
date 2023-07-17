import 'dart:async';

import 'package:arre_assignment_flutter/bloc/system_bloc.dart';
import 'package:arre_assignment_flutter/config/routes/route_path.dart';
import 'package:flutter/material.dart';

class SplashBloc {
  final _splashDelay = 2;

  /// Navigate to Video Screen after 3 seconds
  splashDelayWidget(BuildContext context) async {
    systemBloc.disableStatusBar();
    var duration = Duration(seconds: _splashDelay);
    return Timer(duration, () {
      _navigationPage(context);
    });
  }

  void _navigationPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(Routes.myAccountScreen);
    systemBloc.enableStatusBar();
  }
}

SplashBloc splashBloc = SplashBloc();
