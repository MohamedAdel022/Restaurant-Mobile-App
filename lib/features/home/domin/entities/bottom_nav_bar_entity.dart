import 'package:restaurant_mobile_app/core/utils/assets.dart';

class BottomNavBarEntity {
  final String title;
  final String iconPath;

  BottomNavBarEntity({required this.title, required this.iconPath});
}

List<BottomNavBarEntity> get  bottomNavBarItems => [
  BottomNavBarEntity(title: 'Home', iconPath: Assets.homeIcon),
  BottomNavBarEntity(title: 'Cart', iconPath: Assets.cartIcon),
  BottomNavBarEntity(title: 'Chat', iconPath: Assets.chatIcon),
  BottomNavBarEntity(title: 'Profile', iconPath: Assets.profileIcon),
];
