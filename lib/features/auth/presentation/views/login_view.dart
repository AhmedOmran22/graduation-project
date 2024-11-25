import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/square_image_logo.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        foregroundColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF5B1E1E),
                Color(0xFFB85E5E),
                Color(0xFF9A4A4A),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
        ),
        title: const Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: 100,
                    child: Image.asset(
                      'assets/images/splash.png',
                    )),
                const Text(
                  'BLOOD BANK',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xff5b1e1e),
                      fontSize: 28),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text('Welcome Back!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  hinttext: 'Email',
                  onchange: (data) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hinttext: 'password',
                  onchange: (data) {},
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Text('Forget Password?'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(onPressed: () {}, text: 'Login'),
                const SizedBox(
                  height: 30,
                ),
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
                    ))
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SqureImage(imagepath: AppAssets.imagesGoogleLogo),
                    SizedBox(
                      width: 16,
                    ),
                    SqureImage(imagepath: AppAssets.imagesFacebookLogo),
                    SizedBox(
                      width: 16,
                    ),
                    SqureImage(imagepath: AppAssets.imagesAppleLogo)
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member?'),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RoutesName.login,
                        );
                      },
                      child: const Text(
                        'Register Now',
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
