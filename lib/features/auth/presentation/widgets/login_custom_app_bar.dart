import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_mobile_app/core/theming/styles.dart';

class LoginCustomAppBar extends StatelessWidget {
  const LoginCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Login to your\n',
                style: AppTextStyles.semiBold32Black,
              ),
              TextSpan(
                text: 'account.\n',
                style: AppTextStyles.semiBold32Black,
              ),
              TextSpan(
                text: 'Please sign in to your account',
                style: AppTextStyles.medium14Gray,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
