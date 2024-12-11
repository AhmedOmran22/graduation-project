import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/signup_form.dart';

import '../../../../../core/routes/routes_name.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/square_image_logo.dart';
import 'custom_text_header.dart';
import 'registration_form.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomHeader(
            title: 'BLOOD BANK',
            subtitle: 'Create your account',
          ),
          const SizedBox(height: 20),
          const SignupForm(),
          const SizedBox(height: 20),
          CustomButton(onPressed: () {}, text: 'sign up'),
          const SizedBox(height: 30),
          const Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 2,
                  color: AppColors.primaryColor,
                ),
              ),
              Text(' or continue with '),
              Expanded(
                child: Divider(
                  thickness: 2,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SqureImage(imagepath: AppAssets.imagesGoogleLogo),
              SizedBox(width: 16),
              SqureImage(imagepath: AppAssets.imagesFacebookLogo),
              SizedBox(width: 16),
              SqureImage(imagepath: AppAssets.imagesAppleLogo)
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Not a member?'),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, RoutesName.login);
                },
                child: const Text(
                  'Sigin Now',
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              )
            ],
          ),
          const RegistrationForm(
            text1: 'AlradyhaveAcount?',
            text2: 'signin',
          )
        ],
      ),
    );
  }
}
