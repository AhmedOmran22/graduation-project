import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onSaved, this.hinttext});
  final String? hinttext;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is requierd';
          }
          return null;
        },
        onSaved: onSaved,
        decoration: InputDecoration(
          labelText: hinttext,
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
      ),
    );
  }
}
