import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/features/auth/presentation/views/forget_password_view.dart';
import 'package:graduation_project/features/auth/presentation/views/signin_view.dart';
import 'package:graduation_project/features/auth/presentation/views/signup_view.dart';
import 'package:graduation_project/features/auth/presentation/views/verfiy_your_code_view.dart';
import 'package:graduation_project/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:graduation_project/features/on_boarding/presentation/views/register_or_login_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.splash:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case RoutesName.onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case RoutesName.registerOrLogin:
      return MaterialPageRoute(
          builder: (context) => const RegisterOrLoginView());
    case RoutesName.login:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case RoutesName.register:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case RoutesName.foregetPassword:
      return MaterialPageRoute(
          builder: (context) => const ForgetPasswordView());
    case RoutesName.verfiyYourCode:
      return MaterialPageRoute(
          builder: (context) => const VerfiyYourCodeView());
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        ),
      );
  }
}
