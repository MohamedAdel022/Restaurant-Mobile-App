import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/features/home/domin/entities/food_entity.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/item_grid_list_view.dart';

class FoodGridView extends StatelessWidget {
  const FoodGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.76,
      ),
      itemCount: foodList.length,
      itemBuilder: (context, index) {
        return FoodCard(item: foodList[index]);
      },
    );
  }
}
