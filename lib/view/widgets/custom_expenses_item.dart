import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/models/drawer_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomExpensesItem extends StatelessWidget {
  const CustomExpensesItem(
      {super.key, required this.expensesitem, this.isActive});
  final DrawerModel expensesitem;
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * .12,
      decoration: BoxDecoration(
          border: Border.all(width: .3, color: Colors.grey),
          color: isActive == true ? AppColor.primaryColor : AppColor.whiteColor,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * .01, horizontal: size.width * .01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(Assets.imagesBackgroundAppExper),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(expensesitem.image,
                        height: size.height * .03,
                        color: isActive == true
                            ? AppColor.whiteColor
                            : AppColor.primaryColor),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                  color: isActive == true
                      ? AppColor.whiteColor
                      : AppColor.blackColor,
                )
              ],
            ),
            verticalSpacing(.05, context),
            Text(
              'Balance',
              style: isActive == true
                  ? AppStyle.f16semiboldwhite(context)
                  : AppStyle.f16semiboldblack(context),
            ),
            verticalSpacing(.01, context),
            Text('April 2022',
                style: isActive == true
                    ? AppStyle.f14normalwhite(context)
                    : AppStyle.f14normalgrey(context)),
            verticalSpacing(.02, context),
            Text(
              '\$20,129',
              style: isActive == true
                  ? AppStyle.f24semiboldwhite(context)
                  : AppStyle.f24semiboldprimary(context),
            )
          ],
        ),
      ),
    );
  }
}
