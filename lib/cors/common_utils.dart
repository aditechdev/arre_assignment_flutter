import 'package:flutter/material.dart';

class CommonUtils {
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
}

CommonUtils cUtils = CommonUtils();
