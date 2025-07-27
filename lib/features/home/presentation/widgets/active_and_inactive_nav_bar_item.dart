import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_mobile_app/core/theming/colors.dart';
import 'package:restaurant_mobile_app/features/home/domin/entities/bottom_nav_bar_entity.dart';

class InActiveNavItem extends StatelessWidget {
  const InActiveNavItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(image),
        SizedBox(height: 4),
        Text(
          '',
          style: TextStyle(
            color: Colors.transparent,
            fontSize: 12.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.33,
          ),
        ),
      ],
    );
  }
}

class ActiveNavItem extends StatelessWidget {
  const ActiveNavItem({super.key, required this.bottomNavBarEntity});
  final BottomNavBarEntity bottomNavBarEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          bottomNavBarEntity.iconPath,
          colorFilter: ColorFilter.mode(
            AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(height: 4),
        Text(
          bottomNavBarEntity.title,
          style: TextStyle(
            color: const Color(0xFFFE8C00),
            fontSize: 12.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.33,
          ),
        ),
      ],
    );
  }
}
