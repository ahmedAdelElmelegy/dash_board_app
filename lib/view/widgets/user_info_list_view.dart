import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/models/user_model.dart';
import 'package:dash_board_app/view/widgets/user_info_list_title.dart';
import 'package:flutter/material.dart';

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

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: userlist.map((e) {
        return IntrinsicWidth(
          child: UserInfoListTitle(
            userdata: e,
          ),
        );
      }).toList()),
    );
  }
}
