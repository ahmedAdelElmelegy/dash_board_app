import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/custom_button.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:dash_board_app/view/widgets/custom_user_field.dart';
import 'package:dash_board_app/view/widgets/quick_title.dart';
import 'package:dash_board_app/view/widgets/user_info_list_view.dart';
import 'package:flutter/material.dart';

class CustomQuickInvoice extends StatelessWidget {
  const CustomQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Card(
      elevation: 0,
      color: AppColor.whiteColor,
      child: Padding(
        padding: EdgeInsets.all(size.width * .015),
        child: Column(
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
        ),
      ),
    );
  }
}

class ButtonList extends StatelessWidget {
  const ButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
                isActive: true, onPressed: () {}, title: 'Add more details')),
        horizontalSpacing(.03, context),
        Expanded(
            child: CustomButton(onPressed: () {}, title: 'Add more details')),
      ],
    );
  }
}
