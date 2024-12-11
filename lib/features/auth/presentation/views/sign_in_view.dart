import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import 'widgets/custom_text_header.dart';
import 'widgets/login_form.dart';
import 'widgets/registration_form.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'signin'),
      body: SingleChildScrollView(
        child: Column(children: [
          const CustomHeader(
            title: 'BLOOD BANK',
            subtitle: 'Welcome Back!',
          ),
          const SizedBox(
            height: 20,
          ),
          const LoginForm(),
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
          CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.home);
              },
              text: 'Login'),
          const SizedBox(
            height: 30,
          ),
          const RegistrationForm(
            text1: 'NotAmember!',
            text2: 'signup',
          )
        ]),
      ),
    );
  }
}
