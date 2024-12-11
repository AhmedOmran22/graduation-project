import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';
import 'widgets/singin_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'signin'),
      body: SigninViewBody(),
    );
  }
}
