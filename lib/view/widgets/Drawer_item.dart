import 'package:dash_board_app/models/drawer_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.draweritem, this.isActive});
  final DrawerModel draweritem;
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * .015),
      child: ListTile(
          leading: SvgPicture.asset(draweritem.image),
          title: Text(
            draweritem.title,
            style: isActive == true
                ? AppStyle.f16boldprimary(context)
                : AppStyle.f16Normalblack(context),
          ),
          trailing: isActive == true
              ? Container(
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  width: size.width * .0015,
                )
              : const SizedBox()),
    );
  }
}
