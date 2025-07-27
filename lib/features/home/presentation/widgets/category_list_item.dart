import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/features/home/domin/entities/category_item_entity.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/category_item.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
    required this.isSelected,
    required this.category,
  });
  final bool isSelected;
  final CategoryItemEntity category;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      crossFadeState: isSelected
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      firstChild: ActiveCategoryItem(category: category),
      secondChild: InactiveCategoryItem(category: category),
    );
  }
}
