import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:dash_board_app/view/widgets/Row_list_expenses.dart';
import 'package:dash_board_app/view/widgets/all_expenses_title.dart';
import 'package:flutter/material.dart';

class CustomAllExPenses extends StatelessWidget {
  const CustomAllExPenses({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Card(
      elevation: 0,
      color: AppColor.whiteColor,
      child: Padding(
        padding: EdgeInsets.all(size.width * .02),
        child: Column(
          children: [
            const AllExpensesTitle(),
            verticalSpacing(.05, context),
            SizedBox(height: size.height * .25, child: const RowListExpenses())
          ],
        ),
      ),
    );
  }
}
