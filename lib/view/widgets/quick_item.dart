import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:dash_board_app/view/widgets/button_list.dart';
import 'package:dash_board_app/view/widgets/custom_user_field.dart';
import 'package:dash_board_app/view/widgets/quick_title.dart';
import 'package:dash_board_app/view/widgets/user_info_list_view.dart';
import 'package:flutter/material.dart';

class QuickItem extends StatelessWidget {
  const QuickItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const QuickTitle(),
        verticalSpacing(.04, context),
        Text(
          'Latest Transaction',
          style: AppStyle.f16mediumblack(context),
        ),
        UserInfoListview(),
        verticalSpacing(.01, context),
        const Divider(
          color: AppColor.subtitleColor,
          thickness: .2,
        ),
        const CustomUserField(),
        verticalSpacing(.02, context),
        const ButtonList(),
      ],
    );
  }
}
