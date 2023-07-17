import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget(
      {super.key,
      required this.prefixIcon,
      required this.title,
      required this.suffixIcon,
      this.onTap});
  final String prefixIcon;
  final String title;
  final String suffixIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onTap,
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
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
