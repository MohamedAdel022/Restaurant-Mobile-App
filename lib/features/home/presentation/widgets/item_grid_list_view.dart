import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_mobile_app/core/theming/styles.dart';
import 'package:restaurant_mobile_app/core/utils/assets.dart';
import 'package:restaurant_mobile_app/features/home/domin/entities/food_entity.dart';

class FoodCard extends StatelessWidget {
  final FoodEntity item;

  const FoodCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border, color: Colors.black),
              iconSize: 20,
              padding: EdgeInsets.all(4),
              constraints: BoxConstraints(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    Assets.testImage,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(item.title, style: AppTextStyles.bold16Black),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16.sp),
                          SizedBox(width: 4.w),
                          Text(
                            item.rating.toString(),
                            style: AppTextStyles.regular14Gray,
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          SvgPicture.asset(Assets.smallLocationIcon),
                          SizedBox(width: 4.w),
                          Text(
                            item.distance,
                            style: AppTextStyles.regular14Gray,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '\$${item.price}',
                    style: AppTextStyles.bold16Orange,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
