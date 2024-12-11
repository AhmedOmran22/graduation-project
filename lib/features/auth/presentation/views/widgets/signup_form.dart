import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import 'Drop_down_Button_Form_Field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hinttext: 'name',
          onSaved: (data) {},
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          hinttext: 'email',
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
        CustomTextField(
          hinttext: 'location',
          onSaved: (data) {},
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          hinttext: 'phone number',
          onSaved: (data) {},
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          hinttext: 'brithdata',
          onSaved: (data) {},
        ),
        const SizedBox(
          height: 20,
        ),
        const Dropdownbuttonformfield(),
      ],
    );
  }
}
