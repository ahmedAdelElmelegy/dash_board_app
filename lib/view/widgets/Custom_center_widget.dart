import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/main.dart';
import 'package:dash_board_app/models/user_model.dart';
import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_style.dart';
import 'package:dash_board_app/utils/spacing.dart';
import 'package:dash_board_app/view/widgets/custom_all%20espenses.dart';
import 'package:dash_board_app/view/widgets/quick_title.dart';
import 'package:dash_board_app/view/widgets/user_info_list_title.dart';
import 'package:flutter/material.dart';

class CustomCenterWidget extends StatelessWidget {
  const CustomCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          children: [
            verticalSpacing(.02, context),
            const CustomAllExPenses(),
            verticalSpacing(.02, context),
            const CustomQuickInvoice()
          ],
        ))
      ],
    );
  }
}

class CustomQuickInvoice extends StatelessWidget {
  const CustomQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Card(
      elevation: 0,
      color: AppColor.whiteColor,
      child: Padding(
        padding: EdgeInsets.all(size.width * .02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const QuickTitle(),
            verticalSpacing(.04, context),
            Text(
              'Latest Transaction',
              style: AppStyle.f16mediumblack(context),
            ),
            UserInfoListview(),
            verticalSpacing(.01, context),
            Divider(
              color: AppColor.subtitleColor,
              thickness: .2,
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoListview extends StatelessWidget {
  UserInfoListview({super.key});
  List<UserModel> userlist = [
    UserModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesLogo),
    UserModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        image: Assets.imagesJosua),
    UserModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesLogo),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: size.height * .08,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: userlist.length,
        itemBuilder: (context, index) {
          return UserInfoListTitle(
            userdata: userlist[index],
          );
        },
      ),
    );
  }
}
