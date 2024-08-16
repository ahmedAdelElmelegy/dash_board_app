import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/models/drawer_model.dart';
import 'package:dash_board_app/models/user_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:dash_board_app/view/widgets/Drawer_item.dart';
import 'package:dash_board_app/view/widgets/Drawer_list_view.dart';
import 'package:dash_board_app/view/widgets/user_info_list_title.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  UserModel userdata = UserModel(
      title: 'Lekan Okeowo',
      subtitle: 'demo@gmail.com',
      image: Assets.imagesLogo);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      color: AppColor.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .001),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: verticalSpacing(.01, context),
            ),
            SliverToBoxAdapter(
              child: UserInfoListTitle(userdata: userdata),
            ),
            SliverToBoxAdapter(
              child: verticalSpacing(.01, context),
            ),
            const DrawerListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  DrawerItem(
                    draweritem: DrawerModel(
                        image: Assets.imagesSetting2, title: 'Setting system'),
                  ),
                  DrawerItem(
                    draweritem: DrawerModel(
                        image: Assets.imagesLogout, title: 'Logout account'),
                  ),
                  verticalSpacing(.02, context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
