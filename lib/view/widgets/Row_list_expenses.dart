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
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: Constants.expensesItem.asMap().entries.map((e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: CustomExpensesItem(
                    isActive: _currentIndex == index,
                    expensesitem: item,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: CustomExpensesItem(
                    expensesitem: item,
                    isActive: _currentIndex == index,
                  )),
            );
          }
        }).toList());
  }
}


