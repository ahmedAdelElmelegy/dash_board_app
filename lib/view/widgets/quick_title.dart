import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class QuickTitle extends StatelessWidget {
  const QuickTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyle.f20semiboldblack(context),
        ),
        const Icon(
          Icons.add,
          color: AppColor.primaryColor,
        )
      ],
    );
  }
}
