import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomButton(
      {super.key, this.onPressed, required this.title, this.isActive});
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          minimumSize: Size(double.infinity, size.height * .07),
          backgroundColor:
              isActive == true ? AppColor.whiteColor : AppColor.primaryColor),
      onPressed: onPressed,
      child: Text(
        title,
        style: isActive == true
            ? AppStyle.f16boldprimary(context)
            : AppStyle.f16semiboldwhite(context),
      ),
    );
  }
}
