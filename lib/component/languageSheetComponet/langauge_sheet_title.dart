import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:flutter/material.dart';

class LanguageSheetTitle extends StatelessWidget {
  const LanguageSheetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Edit Language',
      style: tstyle.btmSheetLanguageTitle,
    );
  }
}
