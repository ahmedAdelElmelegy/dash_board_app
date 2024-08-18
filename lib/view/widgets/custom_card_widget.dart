
import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
          color: AppColor.primaryColor,
          image: const DecorationImage(
              image: AssetImage(Assets.imagesBagroudCard))),
      child: Padding(
        padding: EdgeInsets.all(size.width * .02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name card',
                      style: AppStyle.f16Normalwhite(context),
                    ),
                    verticalSpacing(0.01, context),
                    Text(
                      'Syah Bandi',
                      style: AppStyle.f20mediumwhite(context),
                    ),
                  ],
                ),
              const  Spacer(),
                SvgPicture.asset(Assets.imagesImg)
              ],
            ),
            verticalSpacing(.06, context),
            Text(
              '0918 8124 0042 8129',
              style: AppStyle.f24semiboldwhite(context),
            ),
            verticalSpacing(0.01, context),
            Text(
              '12/20-124',
              style: AppStyle.f16Normalwhite(context),
            )
          ],
        ),
      ),
    );
  }
}
