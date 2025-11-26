import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.onChanged,
    required this.text,
  });

  // onChanged callback
  final ValueChanged<String> onChanged; // fixed type and name
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        border: const OutlineInputBorder(), // fixed class name
      ),
      onChanged: onChanged, // fixed typo
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text'; // fixed typo
        }
        return null;
      },
    );
  }
}
