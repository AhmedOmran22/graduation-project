import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/utils/app_assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppAssets.imagesSplash,
        width: 350,
        height: 350,
      ),
    );
  }

  excuteNavigation() async {
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, RoutesName.onBoarding);
  }
}
