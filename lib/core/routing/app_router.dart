import 'package:advanced_course/core/di/dependancy_injection.dart';
import 'package:advanced_course/features/login/ui/login_screen.dart';
import 'package:advanced_course/features/home/ui/home_screen.dart';
import 'package:advanced_course/features/register/logic/cubit/register_cubit.dart';
import 'package:advanced_course/features/register/ui/screens/register_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/on_bording/on_bording_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()),
        );
        case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => getIt<RegisterCubit>(),
              child: const RegisterScreen()),
        );

        case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No Route defined ${settings.name}"),
            ),
          ),
        );
    }
  }
}
