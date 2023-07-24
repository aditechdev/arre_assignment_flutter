import 'package:arre_assignment_flutter/bloc/language_bloc.dart';
import 'package:arre_assignment_flutter/bloc/system_bloc.dart';
import 'package:arre_assignment_flutter/component/custom_app_bar.dart';
import 'package:arre_assignment_flutter/component/myAccountComponent/my_account_component_lib.dart'
    as wid;
import 'package:arre_assignment_flutter/config/r.dart';
import 'package:arre_assignment_flutter/config/text_style.dart' as tstyle;
import 'package:arre_assignment_flutter/cors/common_utils.dart';
import 'package:color_log/color_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAccountScreen extends ConsumerStatefulWidget {
  const MyAccountScreen({
    super.key,
  });

  @override
  ConsumerState<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends ConsumerState<MyAccountScreen> {
  String _version = "";
  @override
  void initState() {
    _getAppVersion();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });

    super.initState();
  }

  _asyncMethod() async {
    await ref.read(languageprovider.notifier).fetchList();
  }

  _getAppVersion() async {
    String v = await systemBloc.getAppVersion();
    setState(() {
      _version = v;
    });
  }

  void showLangueEditBottomSheet() {
    // ref.read(languageprovider.notifier).fetchList();
    cUtils.showBottomSheet(
        context: context,
        bottomSheetComponent: const wid.LanguageBottomSheetComponent());
  }

  notImplemented() {
    cUtils.showWorkInProgressSnackBar();
  }

  @override
  Widget build(BuildContext context) {
    // var th = theme.currentTheme;

    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "My Account",
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 9),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      children: [
                        wid.CustomElevatedButtonWidget(
                          prefixIcon: AssetIcon.communityCodeOfConductIcon,
                          title: "Community Code of Conduct",
                          onTap: () {},
                        ),
                        wid.CustomElevatedButtonWidget(
                          prefixIcon: AssetIcon.communityCodeOfConductIcon,
                          title: "Community Code of Conduct",
                          onTap: () {},
                        ),
                        wid.CustomElevatedButtonWidget(
                          prefixIcon: AssetIcon.communityCodeOfConductIcon,
                          title: "Community Code of Conduct",
                          onTap: () {},
                        ),
                        wid.CustomElevatedButtonWidget(
                          prefixIcon: AssetIcon.communityCodeOfConductIcon,
                          title: "Community Code of Conduct",
                          onTap: () {},
                        ),
                        wid.CustomElevatedButtonWidget(
                          prefixIcon: AssetIcon.communityCodeOfConductIcon,
                          title: "Community Code of Conduct",
                          onTap: () {},
                        ),
                        wid.CustomElevatedButtonWidget(
                          prefixIcon: AssetIcon.communityCodeOfConductIcon,
                          title: "Community Code of Conduct",
                          onTap: () {},
                        ),
                        wid.CustomElevatedButtonWidget(
                          prefixIcon: AssetIcon.communityCodeOfConductIcon,
                          title: "Community Code of Conduct",
                          onTap: () {},
                        ),
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
                        Consumer(
                          builder: (BuildContext context, WidgetRef ref,
                              Widget? child) {
                            return wid.CustomElevatedButtonWidget(
                              prefixIcon: AssetIcon.editMyLanguageIcon,
                              title: "Edit My Languages",
                              onTap: () {
                                showLangueEditBottomSheet();
                              },
                            );
                          },
                        ),
                        wid.CustomSwitchComponent(
                          title: "Customize Interface",
                          onTap: (v) {
                            clog.checkSuccess(v, "Switch Value");
                          },
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
                        const SizedBox(height: 51),
                      ],
                    ), // Empty space after the Logout button
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              fillOverscroll: true,
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // const Spacer(),
                  SvgPicture.asset(AssetSvg.appLogo),
                  const SizedBox(height: 16),
                  Text(
                    "Version $_version",
                    style: tstyle.versionTextStyle,
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
