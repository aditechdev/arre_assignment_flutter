import 'package:arre_assignment_flutter/bloc/language_bloc.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:arre_assignment_flutter/config/theme/abstract_theme.dart';
import 'package:arre_assignment_flutter/model/language_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LangaugeGridComponent extends ConsumerWidget {
  const LangaugeGridComponent({
    super.key,
    required this.th,
  });

  final ColorTheme th;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final languageValue = ref.watch(languageprovider);

    Color isActive(bool isSelected) {
      var c = (isSelected)
          ? th.languageSheetActiveColor
          : th.languageSheetInactiveColor;
      return c;
    }

    TextStyle setStyle({required bool isSelected, isTitile = true}) {
      var inactiveStyle = isTitile
          ? tstyle.languageSheetInActiveTitleTextStyle
          : tstyle.languageSheetInActiveDescTextStyle;
      var t =
          (isSelected) ? tstyle.languageSheetActiveTextStyle : inactiveStyle;
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
      itemCount: languageValue.length,
      itemBuilder: (context, index) {
        var lang = languageValue[index];

        return Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              onTap: () {
                ref.read(languageprovider.notifier).updateList(lang);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: th.langaugeSheetBoxColor,
                    border: Border.all(color: isActive(lang.isSelected!)),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: LangElement(
                  lang: lang,
                  descTextStyle:
                      setStyle(isSelected: lang.isSelected!, isTitile: false),
                  titleTextStyle:
                      setStyle(isSelected: lang.isSelected!, isTitile: true),
                ),
              ),
            ),
            if (lang.isSelected!) CheckWidget(th: th)
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
  final LanguageModel lang;
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
          Text(lang.language!, style: titleTextStyle),
          if (lang.engName!.toLowerCase() != engLang.toLowerCase())
            Text("(${lang.engName})", style: descTextStyle),
        ],
      ),
    );
  }
}
