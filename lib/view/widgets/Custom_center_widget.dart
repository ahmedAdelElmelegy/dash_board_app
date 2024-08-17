import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/main.dart';
import 'package:dash_board_app/models/user_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:dash_board_app/view/widgets/custom_all%20espenses.dart';
import 'package:dash_board_app/view/widgets/custom_quick_invoice.dart';
import 'package:dash_board_app/view/widgets/quick_title.dart';
import 'package:dash_board_app/view/widgets/user_info_list_title.dart';
import 'package:flutter/material.dart';

class CustomCenterWidget extends StatelessWidget {
  const CustomCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          children: [
            verticalSpacing(.02, context),
            const CustomAllExPenses(),
            verticalSpacing(.02, context),
            const CustomQuickInvoice()
          ],
        ))
      ],
    );
  }
}
