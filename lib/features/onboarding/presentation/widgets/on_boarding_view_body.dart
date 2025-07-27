import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_mobile_app/core/router/routes.dart';
import 'package:restaurant_mobile_app/core/utils/assets.dart';
import 'package:restaurant_mobile_app/features/onboarding/domin/entities/on_boarding_entity.dart';
import 'package:restaurant_mobile_app/features/onboarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController _pageController = PageController();
  double _currentPage = 0;

  List<OnBoardingEntity> onBoardingItems = [
    OnBoardingEntity(image: Assets.onboarding1),
    OnBoardingEntity(image: Assets.onboarding2),
    OnBoardingEntity(image: Assets.onboarding3),
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnBoardingPageView(
          pageController: _pageController,
          onBoardingItems: onBoardingItems,
        ),
        Positioned(
          bottom: 50.h,
          left: 0,
          right: 0,
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.85,
              child: AspectRatio(
                aspectRatio: 311 / 350,
                child: Container(
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFE8C00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30.r),
                    child: Column(
                      children: [
                        Text(
                          'We serve incomparable delicacies',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.25,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'All the best restaurants with their top menu waiting for you, they can’t wait for your order!!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            height: 1.43,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        DotsIndicator(
                          onTap: (position) {
                            _pageController.animateToPage(
                              position.toInt(),
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          dotsCount: onBoardingItems.length,
                          position: _currentPage,
                          decorator: DotsDecorator(
                            activeColor: Colors.white,
                            color: const Color(0xFFC2C2C2),
                            size: const Size(24.0, 6.0),
                            activeSize: const Size(24.0, 6.0),
                            spacing: EdgeInsets.symmetric(horizontal: 2.0.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        const Spacer(),
                        if (_currentPage.round() == onBoardingItems.length - 1)
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(Routes.login);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                                padding: EdgeInsets.zero,
                                fixedSize: Size(60.r, 60.r),
                              ),
                              child: SvgPicture.asset(
                                Assets.arrowIcon,
                                width: 32.r,
                                height: 32.r,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xFFFE8C00),
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          )
                        else
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(Routes.login);
                                },
                                child: Text(
                                  'Skip',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
