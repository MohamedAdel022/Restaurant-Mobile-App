import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_mobile_app/core/utils/assets.dart';
import 'package:restaurant_mobile_app/features/home/domin/entities/category_item_entity.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/category_list_item.dart';

class FindByCategoryList extends StatefulWidget {
  const FindByCategoryList({super.key});

  @override
  State<FindByCategoryList> createState() => _FindByCategoryState();
}

class _FindByCategoryState extends State<FindByCategoryList> {
  int selectedIndex = 0; // Track the selected category index

  final categories = [
    CategoryItemEntity(name: 'Burger', imageUrl: Assets.burger),
    CategoryItemEntity(name: 'Pizza', imageUrl: Assets.pizza),
    CategoryItemEntity(name: 'Taco', imageUrl: Assets.taco),
    CategoryItemEntity(name: 'Drink', imageUrl: Assets.drink),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 10.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Find by Category',
                style: TextStyle(
                  color: const Color(0xFF0F0F0F),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 1.50,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: const Color(0xFFFE8C00),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.43,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: categories.asMap().entries.map((entry) {
              int index = entry.key;
              CategoryItemEntity category = entry.value;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: CategoryListItem(
                  isSelected: selectedIndex == index,
                  category: category,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
