import 'package:arre_assignment_flutter/config/theme/theme_manager.dart';
import 'package:flutter/material.dart';

import '../languageSheetComponet/language_scheet_lib.dart' as wid;

class LanguageBottomSheetComponent extends StatelessWidget {
  const LanguageBottomSheetComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var th = theme.currentTheme;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const wid.LanguageSheetTitle(),
            const SizedBox(height: 10),
            const wid.LanguageSheetDescription(),
            const SizedBox(height: 30),
            Flexible(
              child: wid.LangaugeGridComponent(th: th),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                wid.LanguageSheetPositiveButton(th: th),
                wid.LanguageSheetNegativeButton(th: th),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
