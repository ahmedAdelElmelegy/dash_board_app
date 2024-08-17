import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/view/widgets/Custom_center_widget.dart';
import 'package:dash_board_app/view/widgets/Custom_drawer.dart';
import 'package:flutter/material.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 2, child: CustomDrawer()),
         const SizedBox(
            width: 8,
          ),
          Expanded(
              flex: 4,
              child: Container(
                  color: AppColor.fieldColor,
                  child: const CustomCenterWidget())),
          Expanded(
              flex: 3,
              child: Container(color: Colors.blue, child: const Text('jhik')))
        ],
      ),
    );
  }
}
