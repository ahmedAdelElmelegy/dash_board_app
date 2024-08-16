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
          Expanded(
              flex: 4,
              child: Container(color: Colors.red, child: const Text('body'))),
          Expanded(
              flex: 3,
              child: Container(color: Colors.blue, child: const Text('jhik')))
        ],
      ),
    );
  }
}
