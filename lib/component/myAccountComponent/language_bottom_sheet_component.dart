import 'package:arre_assignment_flutter/config/theme/abstract_theme.dart';
import 'package:arre_assignment_flutter/config/theme/theme_manager.dart';
import 'package:arre_assignment_flutter/data/language_list.dart';
import 'package:flutter/material.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;

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
            const LanguageSheetTitle(),
            const SizedBox(height: 10),
            const LanguageSheetDescription(),
            const SizedBox(height: 30),
            Flexible(
              child: LangaugeGridComponent(th: th),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LanguageSheetPositiveButton(th: th),
                LanguageSheetNegativeButton(th: th),
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

class LangaugeGridComponent extends StatelessWidget {
  const LangaugeGridComponent({
    super.key,
    required this.th,
  });

  final ColorTheme th;

  @override
  Widget build(BuildContext context) {
    Color isActive(int index) {
      var c = (index == 0)
          ? th.languageSheetActiveColor
          : th.languageSheetInactiveColor;
      return c;
    }

    TextStyle setStyle({required int index, isTitile = true}) {
      var inactiveStyle = isTitile
          ? tstyle.languageSheetInActiveTitleTextStyle
          : tstyle.languageSheetInActiveDescTextStyle;
      var t =
          (index == 0) ? tstyle.languageSheetActiveTextStyle : inactiveStyle;
      return t;
    }

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 4 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 31,
      ),
      itemCount: languageList.length,
      itemBuilder: (context, index) {
        var lang = languageList[index];

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: th.langaugeSheetBoxColor,
                  border: Border.all(color: isActive(index)),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(lang["language"],
                        style: setStyle(index: index, isTitile: true)),
                    if (lang["eng_name"].toString().toLowerCase() != "english")
                      Text("(${lang["eng_name"]})",
                          style: setStyle(index: index, isTitile: false)),
                  ],
                ),
              ),
            ),
            if (index == 0)
              Positioned(
                top: -5,
                right: -5,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: th.scaffoldBackgroundColor,
                    border: Border.all(
                      color: th.languageSheetActiveColor,
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    Icons.check,
                    size: 12,
                    color: th.languageSheetActiveColor,
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}

class LanguageSheetNegativeButton extends StatelessWidget {
  const LanguageSheetNegativeButton({
    super.key,
    required this.th,
  });

  final ColorTheme th;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          textStyle: tstyle.btmSheetNegativeButtonTextStyle,
          backgroundColor: Colors.transparent,
          foregroundColor: th.bottomSheetNegativeBtnTextColor),
      onPressed: () => Navigator.pop(context),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text("Cancel"),
      ),
    );
  }
}

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
      onPressed: () {},
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
