
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:flutter/material.dart';

class Scroolbtn extends StatelessWidget {
  const Scroolbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 7,
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(10)),
        ),
        horizontalSpacing(.005, context),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
              color: AppColor.circleColor,
              borderRadius: BorderRadius.circular(10)),
        ),
        horizontalSpacing(.005, context),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
              color: AppColor.circleColor,
              borderRadius: BorderRadius.circular(10)),
        )
      ],
    );
  }
}
