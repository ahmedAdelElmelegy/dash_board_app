import 'package:dash_board_app/models/user_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({super.key, required this.userdata});
  final UserModel userdata;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Card(
      elevation: 0,
      color: AppColor.fieldColor,
      child: ListTile(
        leading: SvgPicture.asset(userdata.image),
        title: Text(
          userdata.title,
          style: AppStyle.f16semiboldblack(context),
        ),
        subtitle: Text(
          userdata.subtitle,
          style: AppStyle.f12normalgrey(context),
        ),
      ),
    );
  }
}
