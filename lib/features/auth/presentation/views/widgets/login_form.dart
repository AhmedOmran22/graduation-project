import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomTextField(
        hinttext: 'Email',
        onSaved: (data) {},
      ),
      const SizedBox(
        height: 20,
      ),
      CustomTextField(
        hinttext: 'password',
        onSaved: (data) {},
      ),
      const SizedBox(
        height: 20,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Forget Password?'),
          )
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      CustomButton(onPressed: () {}, text: 'Login'),
    ]);
  }
}
