import 'package:flutter/material.dart';

class CommonUtils {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey(debugLabel: 'scaffoldMessengerKey');
  void showBottomSheet({
    required BuildContext context,
    required Widget bottomSheetComponent,
    bool useSafeArea = true,
    bool isDismissible = true,
    bool enableDrag = true,
    bool isScrollControlled = true,
  }) {
    showModalBottomSheet(
      context: context,
      useSafeArea: useSafeArea,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      isScrollControlled: isScrollControlled,
      builder: (BuildContext context) {
        return bottomSheetComponent;
      },
    );
  }

  showNegativeSnackBar({
    VoidCallback? onVisible,
    required String message,
    int seconds = 1,
  }) {
    final messenger = scaffoldMessengerKey.currentState;
    messenger?.showSnackBar(
      SnackBar(
        duration: Duration(seconds: seconds),
        content: Text(
          // textAlign: TextAlign.center,
          message,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 196, 4, 36),
      ),
    );
  }

  showWorkInProgressSnackBar({
    VoidCallback? onVisible,
    int seconds = 1,
  }) {
    final messenger = scaffoldMessengerKey.currentState;
    messenger?.showSnackBar(
      SnackBar(
        duration: Duration(seconds: seconds),
        content: Text(
          // textAlign: TextAlign.center,
          "⚠️ Work in Progress 🚧",
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 234, 130, 92),
      ),
    );
  }
}

CommonUtils cUtils = CommonUtils();
