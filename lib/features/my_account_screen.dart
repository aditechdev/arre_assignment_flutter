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
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(
            height: 2,
            thickness: 2,
            color: th.appBarShadowColor,
          )
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
