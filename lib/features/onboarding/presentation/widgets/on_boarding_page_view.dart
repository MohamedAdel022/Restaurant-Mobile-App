import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/features/onboarding/domin/entities/on_boarding_entity.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required PageController pageController,
    required this.onBoardingItems,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<OnBoardingEntity> onBoardingItems;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: onBoardingItems.length,
      itemBuilder: (context, index) {
        return Image.asset(
          onBoardingItems[index].image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        );
      },
    );
  }
}