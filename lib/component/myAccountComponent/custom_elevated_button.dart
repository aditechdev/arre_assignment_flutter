import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:arre_assignment_flutter/config/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget(
      {super.key,
      required this.prefixIcon,
      required this.title,
      required this.suffixIcon});
  final String prefixIcon;
  final String title;
  final String suffixIcon;

  @override
  Widget build(BuildContext context) {
    var th = theme.currentTheme;

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: th.btnBackgroundColor,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              prefixIcon,
              height: 20,
              width: 20,
            ),
            const SizedBox(
              width: 13,
            ),
            Text(
              title,
              style: tstyle.btnTextStyle,
            ),
            const Spacer(),
            SvgPicture.asset(
              suffixIcon,
              // width: 20,
              // height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
