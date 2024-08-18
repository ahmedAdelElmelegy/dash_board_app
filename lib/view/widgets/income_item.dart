import 'package:dash_board_app/models/income_model.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:flutter/material.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({
    super.key,
    required this.incomItem,
  });
  final IncomeModel incomItem;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: incomItem.color,
              radius: 5,
            ),
            horizontalSpacing(0.002, context),
            Text(
              incomItem.title,
              style: AppStyle.f16mediumblack(context),
            ),
          ],
        ),
      ],
    );
  }
}
