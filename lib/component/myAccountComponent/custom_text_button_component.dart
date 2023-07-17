import 'package:arre_assignment_flutter/config/r.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({
    super.key,
    required this.title,
    this.suffixIcon = AssetIcon.rightArrowIcon,
    this.onTap,
  });
  final String title;
  final String suffixIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: onTap,
          child: Row(
            children: [
              Text(
                title,
                style: tstyle.txtBtnTextStyle,
              ),
              const Spacer(),
              SvgPicture.asset(
                suffixIcon,
              ),
            ],
          ),
        ),
        // const SizedBox(
        //   height: 15,
        // )
      ],
    );
  }
}
