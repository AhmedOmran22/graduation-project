import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/text_styles.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 300,
          height: 300,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyles.montserratExtraBold23,
        ),
      ],
    );
  }
}
