import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/registration_form.dart';
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
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        const CustomHeader(
          title: 'BLOOD BANK',
          subtitle: 'Welcome Back!',
        ),
        const SizedBox(
          height: 20,
        ),
        const LoginForm(),
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
