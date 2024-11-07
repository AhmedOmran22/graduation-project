import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_colors.dart';

class TextStyles {
  static TextStyle montserratExtraBold23 = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w900,
    color: Colors.white,
    fontSize: 23,
    shadows: [
      Shadow(
        offset: const Offset(1, 3), // position of shadow
        blurRadius: 10, // blurriness of shadow
        color: Colors.black.withOpacity(0.5) // color and opacity
        ,
      ),
    ],
  );
  static TextStyle montserratExtraBold20 = const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w900,
    color: AppColors.primaryColor,
    fontSize: 22,
  );
}
