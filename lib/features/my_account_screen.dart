import 'package:arre_assignment_flutter/component/custom_app_bar.dart';
import 'package:arre_assignment_flutter/component/myAccountComponent/my_account_lib.dart'
    as wid;

import 'package:arre_assignment_flutter/config/r.dart';
import 'package:arre_assignment_flutter/config/theme/theme_manager.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var th = theme.currentTheme;

    return Scaffold(
      appBar: const CustomAppBar(
        appBarTitle: "My Account",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            wid.CustomElevatedButtonWidget(
              prefixIcon: AssetIcon.communityCodeOfConductIcon,
              suffixIcon: AssetIcon.rightArrowIcon,
              title: "Community Code of Conduct",
            ),
            wid.CustomElevatedButtonWidget(
              prefixIcon: AssetIcon.helpCenterIcon,
              suffixIcon: AssetIcon.rightArrowIcon,
              title: "Help Center",
            ),
            wid.CustomElevatedButtonWidget(
              prefixIcon: AssetIcon.editMyLanguageIcon,
              suffixIcon: AssetIcon.rightArrowIcon,
              title: "Edit My Languages",
            ),
            wid.CustomElevatedButtonWidget(
              prefixIcon: AssetIcon.logOutIcon,
              suffixIcon: AssetIcon.rightArrowIcon,
              title: "Logout",
            ),
          ],
        ),
      ),
    );
    // Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     title: const Text("Setting Page"),
    //   ),
    //   body: const Center(child: Text("data")),
    // );
  }
}
