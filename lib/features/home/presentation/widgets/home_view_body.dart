import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/find_by_category_list.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/food_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomHomeAppBar()),
        SliverToBoxAdapter(child: SizedBox(height: 16.h)),
        SliverToBoxAdapter(child: FindByCategoryList()),
        SliverToBoxAdapter(child: SizedBox(height: 16.h)),
        FoodGridView(),
      ],
    );
  }
}
