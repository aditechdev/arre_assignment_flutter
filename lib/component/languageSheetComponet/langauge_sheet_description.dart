import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:flutter/material.dart';

class LanguageSheetDescription extends StatelessWidget {
  const LanguageSheetDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Select the languages VoicePods to be in',
      style: tstyle.btmSheetLanguageDescription,
    );
  }
}
