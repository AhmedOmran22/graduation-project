import 'package:flutter/material.dart';

class Dropdownbuttonformfield extends StatelessWidget {
  const Dropdownbuttonformfield({super.key, required this.onChanged});
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DropdownButtonFormField<String>(
        validator: (value) {
          if (value == null) {
            return 'field is requierd';
          }
          return null;
        },
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff5b1e1e)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff5b1e1e)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff5b1e1e)),
          ),
          labelText: 'Type of Blood',
        ),
        items: ['A', 'B', 'AB', 'O']
            .map(
              (type) => DropdownMenuItem(
                value: type,
                child: Text(type),
              ),
            )
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}
