import 'package:dash_board_app/utils/custom_button.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:flutter/material.dart';

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
