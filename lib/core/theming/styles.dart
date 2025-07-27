import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class AppTextStyles {
  // Large titles (32sp)
  static TextStyle semiBold32White = TextStyle(
    color: Colors.white,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  static TextStyle semiBold32Black = TextStyle(
    color: AppColors.darkTextColor,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  // Medium titles (16sp)
  static TextStyle bold16Black = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle bold16Orange = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  );

  // Regular text (14sp)
  static TextStyle regular14White = TextStyle(
    color: Colors.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.43,
  );

  static TextStyle medium14White = TextStyle(
    color: Colors.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.43,
  );

  static TextStyle semiBold14White = TextStyle(
    color: Colors.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 1.43,
  );

  static TextStyle medium14Black = TextStyle(
    color: const Color(0xFF0F0F0F),
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 1.43,
  );

  static TextStyle semiBold14Black = TextStyle(
    color: const Color(0xFF0F0F0F),
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 1.43,
  );

  static TextStyle semiBold14Orange = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 1.43,
  );

  static TextStyle medium14Gray = TextStyle(
    color: const Color(0xFF878787),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.43,
  );

  static TextStyle regular14Gray = TextStyle(
    fontSize: 14.sp,
    color: Colors.black54,
  );

  // Button text
  static TextStyle semiBold14WhiteButton = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 1.43,
  );

  // Form field text
  static TextStyle regular14BlackForm = TextStyle(
    color: const Color(0xFF0F0F0F),
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.43,
  );

  static TextStyle regular14GrayHint = TextStyle(
    color: const Color(0xFF878787),
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.43,
  );

  // Category text
  static TextStyle medium16Black = TextStyle(
    color: const Color(0xFF0F0F0F),
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 1.25,
  );

  static TextStyle semiBold16Orange = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  static TextStyle regular12Gray = TextStyle(
    color: const Color(0xFF878787),
    fontSize: 12,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.33,
  );

  // Navigation bar text
  static TextStyle regular10White = TextStyle(
    color: Colors.white,
    fontSize: 10,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.60,
  );

  static TextStyle medium10Orange = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 10,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 1.60,
  );
}
