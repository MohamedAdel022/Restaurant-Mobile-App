import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/features/home/domin/entities/bottom_nav_bar_entity.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/active_and_inactive_nav_bar_item.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.isActive,
    required this.bottomNavBarEntity,
  });
  final bool isActive;
  final BottomNavBarEntity bottomNavBarEntity;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveNavItem(bottomNavBarEntity: bottomNavBarEntity),
      secondChild: InActiveNavItem(image: bottomNavBarEntity.iconPath),
      crossFadeState: isActive
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
      firstCurve: Curves.easeInOut,
      secondCurve: Curves.easeInOut,
      alignment: Alignment.center,
    );
  }
}
