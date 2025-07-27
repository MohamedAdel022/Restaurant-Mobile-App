import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_mobile_app/core/utils/assets.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/custom_icon_button.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          onPressed: () {
            
          },
          iconAsset: Assets.googleIcon,
        ),
        CustomIconButton(
          onPressed: () {
          
          },
          iconAsset: Assets.facebookIcon,
        ),
        CustomIconButton(
          onPressed: () {
            
          },
          iconAsset: Assets.appleIcon,
        ),
      ],
    );
  }
}
