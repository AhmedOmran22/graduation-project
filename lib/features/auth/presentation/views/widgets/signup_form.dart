import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'Drop_down_Button_Form_Field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController locationController;
  late TextEditingController phoneNumberController;
  late TextEditingController brithdataController;
  late TextEditingController bloodTypeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hinttext: 'name',
          onSaved: (data) 
          {
              
          },
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
        const SizedBox(height: 20),
        CustomButton(onPressed: () {}, text: 'sign up'),
      ],
    );
  }
}
