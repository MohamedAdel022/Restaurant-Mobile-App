import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_mobile_app/core/theming/colors.dart';
import 'package:restaurant_mobile_app/features/home/domin/entities/category_item_entity.dart';

class ActiveCategoryItem extends StatelessWidget {
  const ActiveCategoryItem({super.key, required this.category});
  final CategoryItemEntity category;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryColor,
      child: Container(
        constraints: BoxConstraints(minWidth: 65.w, minHeight: 65.h),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(category.imageUrl, width: 24.w, height: 24.h),
              SizedBox(height: 5.h),
              Text(
                category.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Action Sans',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InactiveCategoryItem extends StatelessWidget {
  const InactiveCategoryItem({super.key, required this.category});
  final CategoryItemEntity category;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
      color: Colors.white,
      child: Container(
        constraints: BoxConstraints(minWidth: 65.w, minHeight: 65.h),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(category.imageUrl, width: 24.w, height: 24.h),
              SizedBox(height: 5.h),
              Text(
                category.name,
                style: TextStyle(
                  color: const Color(0xFF878787),
                  fontSize: 14,
                  fontFamily: 'Action Sans',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
