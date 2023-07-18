import 'package:arre_assignment_flutter/bloc/language_bloc.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:arre_assignment_flutter/config/theme/abstract_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageSheetNegativeButton extends StatelessWidget {
  const LanguageSheetNegativeButton({
    super.key,
    required this.th,
  });

  final ColorTheme th;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return TextButton(
          style: TextButton.styleFrom(
              textStyle: tstyle.btmSheetNegativeButtonTextStyle,
              backgroundColor: Colors.transparent,
              foregroundColor: th.bottomSheetNegativeBtnTextColor),
          onPressed: () {
            ref.read(languageprovider.notifier).clearTempList();
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text("Cancel"),
          ),
        );
      },
      // child:
    );
  }
}
