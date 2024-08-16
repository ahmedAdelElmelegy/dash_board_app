import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/models/user_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/spacing.dart';
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
    return Container(
      color: AppColor.whiteColor,
      child: Column(
        children: [
          verticalSpacing(.01, context),
          UserInfoListTitle(userdata: userdata)
        ],
      ),
    );
  }
}
