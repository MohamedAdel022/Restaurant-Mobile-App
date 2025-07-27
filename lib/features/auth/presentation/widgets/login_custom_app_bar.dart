import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                style: TextStyle(
                  color: const Color(0xFF0F0F0F),
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.25,
                ),
              ),
              TextSpan(
                text: 'account.\n',
                style: TextStyle(
                  color: const Color(0xFF0F0F0F),
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.25,
                ),
              ),
              TextSpan(
                text: 'Please sign in to your account',
                style: TextStyle(
                  color: const Color(0xFF878787),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.43,
                ),
              ),
            ],
          ),
        ),
      ],
    );
 
  }
}
