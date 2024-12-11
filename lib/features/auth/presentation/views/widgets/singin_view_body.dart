import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/registration_form.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'custom_text_header.dart';
import 'login_form.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        CustomButton(onPressed: () {}, text: 'Login'),
        const SizedBox(
          height: 30,
        ),
        RegistrationForm(
          onTap: () {
            Navigator.of(context).pushNamed(RoutesName.register);
          },
          text1: 'NotAmember!',
          text2: 'signup',
        )
      ]),
    );
  }
}
