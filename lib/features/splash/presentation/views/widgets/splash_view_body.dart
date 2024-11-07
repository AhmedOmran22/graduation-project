import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/utils/text_styles.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.imagesSplash,
          width: 250,
          height: 250,
        ),
        const SizedBox(height: 10),
        Text(
          textAlign: TextAlign.center,
          'BLOOD BANK ',
          style: TextStyles.montserratExtraBold20,
        ),
        Text(
          textAlign: TextAlign.center,
          'APP',
          style: TextStyles.montserratExtraBold20,
        ),
      ],
    );
  }

  excuteNavigation() async {
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, RoutesName.onBoarding);
  }
}
