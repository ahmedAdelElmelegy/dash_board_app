import 'package:dash_board_app/models/price_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomPriceTitle extends StatelessWidget {
  const CustomPriceTitle({
    super.key,
    required this.pricedata,
  });
  final PriceModel pricedata;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        decoration: const BoxDecoration(color: AppColor.fieldColor),
        child: ListTile(
          title: Text(
            pricedata.title,
            style: AppStyle.f16semiboldblack(context),
          ),
          subtitle: Text(
            pricedata.subtitle,
            style: AppStyle.f16Normalgrey(context),
          ),
          trailing: Text(
            pricedata.price,
            style: AppStyle.f20semiBoldRed(context),
          ),
        ),
      ),
    );
  }
}
