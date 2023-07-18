import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:arre_assignment_flutter/config/theme/abstract_theme.dart';
import 'package:flutter/material.dart';

class LanguageSheetPositiveButton extends StatelessWidget {
  const LanguageSheetPositiveButton({
    super.key,
    required this.th,
  });

  final ColorTheme th;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: th.bottomSheetPositiveBtnBackground,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          "Update",
          style: tstyle.btmSheetPositiveButtonTextStyle,
        ),
      ),
    );
  }
}
