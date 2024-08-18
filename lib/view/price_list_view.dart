import 'package:dash_board_app/models/price_model.dart';
import 'package:dash_board_app/view/widgets/cutom_price_title.dart';
import 'package:flutter/material.dart';

class PriceListView extends StatelessWidget {
  const PriceListView({
    super.key,
    required this.priceitem,
  });

  final List<PriceModel> priceitem;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      priceitem.length,
      (index) => CustomPriceTitle(pricedata: priceitem[index]),
    ));
  }
}
