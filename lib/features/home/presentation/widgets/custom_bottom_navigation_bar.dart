import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_mobile_app/features/home/domin/entities/bottom_nav_bar_entity.dart';
import 'package:restaurant_mobile_app/features/home/presentation/widgets/nav_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 40,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
        child: Row(
          children: bottomNavBarItems.asMap().entries.map((e) {
            int index = e.key;
            BottomNavBarEntity item = e.value;

            return Expanded(
              child: Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: NavBarItem(
                    isActive: selectedIndex == index,
                    bottomNavBarEntity: item,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
