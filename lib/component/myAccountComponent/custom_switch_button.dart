import 'package:arre_assignment_flutter/config/r.dart';
import 'package:flutter/cupertino.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;

import 'package:flutter/material.dart';

class CustomSwitchComponent extends StatefulWidget {
  const CustomSwitchComponent({
    super.key,
    required this.title,
    this.suffixIcon = AssetIcon.rightArrowIcon,
    this.onTap,
  });
  final String title;
  final String suffixIcon;
  final Function(bool)? onTap;

  @override
  State<CustomSwitchComponent> createState() => _CustomSwitchComponentState();
}

class _CustomSwitchComponentState extends State<CustomSwitchComponent> {
  bool _switchValue = false;

  toggleSwitch(v) {
    setState(() => _switchValue = v);
    widget.onTap!(v);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: null,
          child: Row(
            children: [
              Text(
                widget.title,
                style: tstyle.txtBtnTextStyle,
              ),
              const Spacer(),
              Container(
                width: 63,
                height: 40,
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: _switchValue
                          ? Colors.white
                          : const Color(0xff696969)),
                  image: DecorationImage(
                    image: AssetImage(
                      _switchValue
                          ? AssetIcon.switchLightIconPNG
                          : AssetIcon.switchDarkIconPNG,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CupertinoSwitch(
                  activeColor: Colors.transparent,
                  trackColor: Colors.transparent,
                  value: _switchValue,
                  onChanged: toggleSwitch,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
