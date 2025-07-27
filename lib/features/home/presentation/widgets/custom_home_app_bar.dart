import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_mobile_app/core/theming/styles.dart';
import 'package:restaurant_mobile_app/core/utils/assets.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/custom_icon_button.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.30,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.homeAppBarBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  spacing: 8.h,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Your Location',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.regular14White,
                        ),
                        SizedBox(width: 5.w),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                          size: 16.w,
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SvgPicture.asset(Assets.locationIcon),

                        Text(
                          'New York City',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.semiBold14White,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                CustomIconButton(
                  iconAsset: Assets.searchIcon,
                  onPressed: () {
                    // Implement search functionality
                  },
                ),
                SizedBox(width: 8.w),
                CustomIconButton(
                  iconAsset: Assets.notificationsIcon,
                  onPressed: () {
                    // Implement notification functionality
                  },
                ),
              ],
            ),
            Spacer(),
            Text(
              'Provide the best food for you',
              style: AppTextStyles.semiBold32White,
            ),
          ],
        ),
      ),
    );
  }
}
