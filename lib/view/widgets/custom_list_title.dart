import 'package:dash_board_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  const CustomListTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyle.f20semiboldblack(context),
            ),
            Text(
              'See all',
              style: AppStyle.f16mediumprimary(context),
            ),
          ],
        ),
      ),
      subtitle: Text(
        '13 April 2022',
        style: AppStyle.f16Normalgrey(context),
      ),
    );
  }
}
