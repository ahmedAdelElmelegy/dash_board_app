import 'package:dash_board_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefexIcon;
  final IconData? sufixIcon;
  final Color? iconColor;
  final bool? isCart;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefexIcon,
    this.sufixIcon,
    this.iconColor,
    this.isCart,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      hintText: hintText,
      fillColor: AppColor.fieldColor,
      filled: true,
      border: outBorder(),
      enabledBorder: outBorder(),
      focusedBorder: outBorder(),
      prefixIconColor: iconColor,
      // prefixIcon: Icon(prefexIcon),
      // suffixIcon: Icon(sufixIcon)));
    ));
  }

  OutlineInputBorder outBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none);
  }
}
