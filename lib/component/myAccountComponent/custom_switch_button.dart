import 'package:arre_assignment_flutter/config/r.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 70,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            _switchValue
                ? AssetIcon.switchLightIconPNG
                : AssetIcon.switchDarkIconPNG,
          ),
          fit: BoxFit.cover,
        ),
      ),

      child: Switch(
        value: _switchValue,
        onChanged: (value) {
          setState(() {
            _switchValue = value;
          });
        },
        activeColor: Colors.transparent,
        activeTrackColor: Colors.transparent,
        inactiveThumbColor: Colors.transparent,
        inactiveTrackColor: Colors.transparent,
        // trackColor:
        //     MaterialStateColor.resolveWith((states) => Colors.transparent),
        // thumbColor: MaterialStateColor.resolveWith((states) => Colors.amber),
      ),
    );
  }
}
