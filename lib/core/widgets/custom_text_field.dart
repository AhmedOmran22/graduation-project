import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onchange, this.hinttext});
  final String? hinttext;
  final Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is requierd';
        }
        return null;
      },
      onChanged: onchange,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(color: Color(0xff5b1e1e)),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff5b1e1e)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff5b1e1e)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff5b1e1e)),
        ),
      ),
    );
  }
}
