import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
