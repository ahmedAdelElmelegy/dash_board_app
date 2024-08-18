import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/models/income_model.dart';
import 'package:dash_board_app/models/price_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:dash_board_app/view/price_list_view.dart';
import 'package:dash_board_app/view/widgets/custom_card_widget.dart';
import 'package:dash_board_app/view/widgets/custom_list_title.dart';
import 'package:dash_board_app/view/widgets/custom_quick_invoice.dart';
import 'package:dash_board_app/view/widgets/cutom_price_title.dart';
import 'package:dash_board_app/view/widgets/income_item.dart';
import 'package:dash_board_app/view/widgets/income_section.dart';
import 'package:dash_board_app/view/widgets/scrool_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCartSection extends StatelessWidget {
  CustomCartSection({super.key});
  List<PriceModel> priceitem = [
    PriceModel(
        title: 'Cash Withdrawal', subtitle: '13 Apr, 2022 ', price: r'$20,129'),
    PriceModel(
        title: 'Landing Page project',
        subtitle: '13 Apr, 2022 at 3:30 PM ',
        price: r'$2,000'),
    PriceModel(
        title: 'Juni Mobile App project',
        subtitle: '13 Apr, 2022 at 3:30 PM ',
        price: r'$20,129')
  ];

  List<IncomeModel> incomitem = [
    IncomeModel(
        color: const Color(0xff208CC8),
        title: 'Design service',
        presintage: '40%'),
    IncomeModel(
        color: const Color(0xff4EB7F2),
        title: 'Design product',
        presintage: '2%'),
    IncomeModel(
        color: const Color(0xff064061),
        title: 'Product royalti',
        presintage: '20%'),
    IncomeModel(
        color: const Color(0xffE2DECD), title: 'Other', presintage: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomQuickInvoice(
              padding: size.width * .01,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My card',
                    style: AppStyle.f20semiboldblack(context),
                  ),
                  verticalSpacing(0.01, context),
                  CustomCardWidget(size: size),
                  verticalSpacing(0.01, context),
                  const Scroolbtn(),
                  verticalSpacing(.005, context),
                  const Divider(
                    color: AppColor.subtitleColor,
                    thickness: .2,
                  ),
                  verticalSpacing(0.005, context),
                  const CustomListTitle(),
                  PriceListView(priceitem: priceitem)
                ],
              )),
          InComeSection(size: size, incomitem: incomitem)
        ],
      ),
    );
  }
}
