import 'package:arre_assignment_flutter/bloc/system_bloc.dart';
import 'package:arre_assignment_flutter/component/custom_app_bar.dart';
import 'package:arre_assignment_flutter/component/myAccountComponent/custom_switch_button.dart';
import 'package:arre_assignment_flutter/component/myAccountComponent/my_account__component_lib.dart'
    as wid;

import 'package:arre_assignment_flutter/config/r.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:arre_assignment_flutter/config/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({
    super.key,
  });

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  String _version = "";
  @override
  void initState() {
    _getAppVersion();
    super.initState();
  }

  _getAppVersion() async {
    String v = await systemBloc.getAppVersion();
    setState(() {
      _version = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    var th = theme.currentTheme;

    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "My Account",
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              wid.CustomElevatedButtonWidget(
                prefixIcon: AssetIcon.communityCodeOfConductIcon,
                title: "Community Code of Conduct",
                onTap: () {},
              ),
              wid.CustomElevatedButtonWidget(
                prefixIcon: AssetIcon.helpCenterIcon,
                title: "Help Center",
                onTap: () {},
              ),
              wid.CustomElevatedButtonWidget(
                prefixIcon: AssetIcon.editMyLanguageIcon,
                title: "Edit My Languages",
                onTap: () {},
              ),
              wid.CustomTextButtonWidget(
                title: "Customize Interface",
                onTap: () {},
              ),
              wid.CustomTextButtonWidget(
                title: "Terms of Service",
                onTap: () {},
              ),
              wid.CustomTextButtonWidget(
                title: "Privacy Policy",
                onTap: () {},
              ),
              wid.CustomTextButtonWidget(
                title: "Temporarily Deactivate My Account",
                onTap: () {},
              ),
              wid.CustomTextButtonWidget(
                title: "Permanent Delete My Account",
                onTap: () {},
              ),
              wid.CustomElevatedButtonWidget(
                prefixIcon: AssetIcon.logOutIcon,
                title: "Logout",
                onTap: () {},
              ),
              const CustomSwitch(),
              const Spacer(),
              SvgPicture.asset(AssetSvg.appLogo),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Version $_version",
                style: tstyle.versionTextStyle,
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
