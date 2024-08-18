import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/models/income_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:dash_board_app/view/widgets/custom_quick_invoice.dart';
import 'package:dash_board_app/view/widgets/income_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InComeSection extends StatelessWidget {
  const InComeSection({
    super.key,
    required this.size,
    required this.incomitem,
  });

  final Size size;
  final List<IncomeModel> incomitem;

  @override
  Widget build(BuildContext context) {
    return CustomQuickInvoice(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Income',
                style: AppStyle.f20semiboldblack(context),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColor.subtitleColor)),
                child: Row(
                  children: [
                    Text(
                      'Monthly',
                      style: AppStyle.f16Normalblack(context),
                    ),
                    const Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ],
          ),
          verticalSpacing(0.01, context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.imagesIncomecircle,
                height: size.height * .1,
              ),
              horizontalSpacing(0.01, context),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  incomitem.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: IncomeItem(
                      incomItem: incomitem[index],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Column(
                children: List.generate(
                    incomitem.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            incomitem[index].presintage,
                            style: AppStyle.f16mediumprimary(context),
                          ),
                        )),
              ),
              horizontalSpacing(.01, context),
            ],
          )
        ],
      ),
    );
  }
}
