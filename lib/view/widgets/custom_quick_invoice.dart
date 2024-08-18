import 'package:dash_board_app/utils/app_color.dart';

import 'package:flutter/material.dart';

class CustomQuickInvoice extends StatelessWidget {
  const CustomQuickInvoice({super.key, required this.child, this.padding});
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        elevation: 0,
        color: AppColor.whiteColor,
        child: Padding(
            padding: EdgeInsets.all(padding ?? size.width * .005),
            child: child),
      ),
    );
  }
}
