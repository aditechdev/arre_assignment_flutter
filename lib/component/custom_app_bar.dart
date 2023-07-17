import 'package:arre_assignment_flutter/config/r.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:arre_assignment_flutter/config/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.appBarTitle = ""});
  final String? appBarTitle;

  @override
  Size get preferredSize => const Size.fromHeight(87);

  @override
  Widget build(BuildContext context) {
    var th = theme.currentTheme;

    return AppBar(
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    AssetIcon.backButton,
                    height: 34,
                    width: 34,
                  ),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
                Text(
                  appBarTitle!,
                  style: tstyle.appBarTitleTextStyle,
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            color: th.appBarShadowColor,
          ),
        ],
      ),
    );
  }
}
