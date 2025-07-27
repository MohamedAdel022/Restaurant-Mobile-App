import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_mobile_app/core/router/app_router.dart';
import 'package:restaurant_mobile_app/core/router/routes.dart';
import 'package:restaurant_mobile_app/core/service/navigation_observer.dart';
import 'package:restaurant_mobile_app/core/theming/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryColor,
            surface: AppColors.backgroundColor,
          
          ),

          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        navigatorObservers: [MyRouteObserver()],
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routes.onBoarding,
      ),
    );
  }
}
