import 'package:dash_board_app/constants/constants.dart';
import 'package:dash_board_app/view/widgets/custom_expenses_item.dart';
import 'package:flutter/material.dart';

class RowListExpenses extends StatefulWidget {
  const RowListExpenses({
    super.key,
  });

  @override
  State<RowListExpenses> createState() => _RowListExpensesState();
}

class _RowListExpensesState extends State<RowListExpenses> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Constants.expensesItem.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: CustomExpensesItem(
                  isActive: _currentIndex == index,
                  expensesitem: Constants.expensesItem[index],
                ),
              ),
            ));
  }
}
