import 'package:arre_assignment_flutter/bloc/language_bloc.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:arre_assignment_flutter/config/theme/abstract_theme.dart';
import 'package:arre_assignment_flutter/cors/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageSheetPositiveButton extends StatelessWidget {
  const LanguageSheetPositiveButton({
    super.key,
    required this.th,
  });

  final ColorTheme th;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: th.bottomSheetPositiveBtnBackground,
          ),
          onPressed: () {
            ref.read(languageprovider.notifier).finalUpdate();
            Navigator.pop(context);
            cUtils.showNegativeSnackBar(message: "Saved Successfully");
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Update",
              style: tstyle.btmSheetPositiveButtonTextStyle,
            ),
          ),
        );
      },
    );
  }
}
