import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:arre_assignment_flutter/config/theme/abstract_theme.dart';
import 'package:arre_assignment_flutter/data/language_list.dart';
import 'package:flutter/material.dart';

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
              child: LangElement(
                lang: lang,
                descTextStyle: setStyle(index: index, isTitile: false),
                titleTextStyle: setStyle(index: index, isTitile: true),
              ),
            ),
            if (index == 0) CheckWidget(th: th)
          ],
        );
      },
    );
  }
}

class CheckWidget extends StatelessWidget {
  const CheckWidget({
    super.key,
    required this.th,
  });

  final ColorTheme th;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}

class LangElement extends StatelessWidget {
  const LangElement(
      {super.key,
      required this.lang,
      required this.titleTextStyle,
      required this.descTextStyle});
  final Map<String, dynamic> lang;
  final TextStyle titleTextStyle;
  final TextStyle descTextStyle;

  @override
  Widget build(BuildContext context) {
    const String engLang = "english";

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(lang["language"], style: titleTextStyle),
          if (lang["eng_name"].toString().toLowerCase() != engLang)
            Text("(${lang["eng_name"]})", style: descTextStyle),
        ],
      ),
    );
  }
}
