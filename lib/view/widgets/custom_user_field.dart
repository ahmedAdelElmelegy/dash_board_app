import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/custom_text_field.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:flutter/material.dart';

class CustomUserField extends StatelessWidget {
  const CustomUserField({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customer name',
                    style: AppStyle.f16mediumblack(context),
                  ),
                  verticalSpacing(.01, context),
                  const CustomTextField(
                    hintText: 'Type customer name',
                  )
                ],
              ),
            ),
            horizontalSpacing(.03, context),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customer Email',
                    style: AppStyle.f16mediumblack(context),
                  ),
                  verticalSpacing(.01, context),
                  const CustomTextField(
                    hintText: 'Type customer Email',
                  )
                ],
              ),
            ),
          ],
        ),
        verticalSpacing(.01, context),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item name',
                    style: AppStyle.f16mediumblack(context),
                  ),
                  verticalSpacing(.01, context),
                  const CustomTextField(
                    hintText: 'Type customer name',
                  )
                ],
              ),
            ),
            horizontalSpacing(.03, context),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item mount',
                    style: AppStyle.f16mediumblack(context),
                  ),
                  verticalSpacing(.01, context),
                  const CustomTextField(
                    hintText: 'USD',
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
