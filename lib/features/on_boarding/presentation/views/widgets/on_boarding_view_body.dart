import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/core/utils/app_texts.dart';
import 'package:graduation_project/features/on_boarding/presentation/views/widgets/on_boarding_page_view_item.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [
            // AppColors.lightPrimaryColor,
            AppColors.lightPrimaryColor,
            AppColors.dartPrimaryColor
          ],
        ),
      ),
      child: PageView(
        children: const [
          OnBoardingPageViewItem(
            image: AppAssets.imagesOnBoarding1,
            text: AppTexts.onBoarding1,
          ),
          OnBoardingPageViewItem(
            image: AppAssets.imagesOnBoarding2,
            text: AppTexts.onBoarding2,
          ),
          OnBoardingPageViewItem(
            image: AppAssets.imagesOnBoarding3,
            text: AppTexts.onBoarding3,
          ),
        ],
      ),
    );
  }
}
