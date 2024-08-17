import 'package:dash_board_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class AllExpensesTitle extends StatelessWidget {
  const AllExpensesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyle.f20semiboldblack(context),
        ),
        Row(
          children: [
            Text(
              'Monthly',
              style: AppStyle.f16Normalblack(context),
            ),
            const Icon(Icons.keyboard_arrow_down)
          ],
        )
      ],
    );
  }
}
