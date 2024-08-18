import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:dash_board_app/view/widgets/button_list.dart';
import 'package:dash_board_app/view/widgets/custom_all%20espenses.dart';
import 'package:dash_board_app/view/widgets/custom_quick_invoice.dart';
import 'package:dash_board_app/view/widgets/custom_user_field.dart';
import 'package:dash_board_app/view/widgets/quick_item.dart';
import 'package:dash_board_app/view/widgets/quick_title.dart';
import 'package:dash_board_app/view/widgets/user_info_list_view.dart';
import 'package:flutter/material.dart';

class CustomCenterWidget extends StatelessWidget {
  const CustomCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAllExPenses(),
          verticalSpacing(.015, context),
          const CustomQuickInvoice(
            child: QuickItem(),
          )
        ],
      ),
    );
  }
}
