import 'package:dash_board_app/constants/assets.dart';
import 'package:dash_board_app/models/drawer_model.dart';

abstract class Constants {
  static List<DrawerModel> draweritem = [
    DrawerModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerModel(image: Assets.imagesMytransaction, title: 'My Transaction'),
    DrawerModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
}
