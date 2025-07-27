import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_mobile_app/core/di/get_it.dart';
import 'package:restaurant_mobile_app/core/router/routes.dart';
import 'package:restaurant_mobile_app/features/auth/domin/repos/auth_repo.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/views/login_view.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/views/register_view.dart';
import 'package:restaurant_mobile_app/features/home/presentation/views/home_view.dart';
import 'package:restaurant_mobile_app/features/onboarding/presentation/views/on_boarding_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => OnBoardingView(),
          settings: RouteSettings(name: 'OnBoardingView'),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SigninCubit(getIt.get<AuthRepo>()),
            child: const LoginView(),
          ),
          settings: RouteSettings(name: 'LoginView'),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignupCubit(getIt.get<AuthRepo>()),
            child: const RegisterView(),
          ),
          settings: RouteSettings(name: 'RegisterView'),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => HomeView(),
          settings: RouteSettings(name: 'HomeView'),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Route not found: ${settings.name}')),
          ),
          settings: RouteSettings(name: 'UnknownRoute'),
        );
    }
  }
}
