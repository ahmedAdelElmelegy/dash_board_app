import 'package:dash_board_app/constants/constants.dart';
import 'package:dash_board_app/view/widgets/Drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

int _currentIndex = 0;

class _DrawerListViewState extends State<DrawerListView> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: Constants.draweritem.length,
      itemBuilder: (context, index) => Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
        child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              if (_currentIndex != index) {
                setState(() {
                  _currentIndex = index;
                });
              }
            },
            child: DrawerItem(
              draweritem: Constants.draweritem[index],
              isActive: _currentIndex == index,
            )),
      ),
    );
  }
}
