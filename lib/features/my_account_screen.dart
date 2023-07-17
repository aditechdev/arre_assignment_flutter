import 'package:arre_assignment_flutter/component/custom_app_bar.dart';
import 'package:arre_assignment_flutter/config/r.dart';
import 'package:arre_assignment_flutter/config/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
       
        ],
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
