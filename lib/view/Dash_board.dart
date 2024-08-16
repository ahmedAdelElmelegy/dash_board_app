import 'package:dash_board_app/view/adaptive_layout.dart';
import 'package:dash_board_app/view/widgets/dash_board_desktop_layout.dart';
import 'package:dash_board_app/view/widgets/dash_board_mobile_layout.dart';
import 'package:dash_board_app/view/widgets/dash_board_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobilelayout: (context) => const DashBoardMobileLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout()),
    );
  }
}
