import 'package:flutter/material.dart';

class StudentFormField extends StatelessWidget {
  const StudentFormField({
    Key? key,
    required this.controller,
    required this.label,
    required this.obscureText,
  }): super(key: key);

  final TextEditingController controller;
  final String label;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      style: const TextStyle(
        fontSize: 16,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.grey
        ),
        contentPadding: const EdgeInsets.only(
            left: 14,
            top: 0,
            right: 30,
            bottom: 0
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1,
                color: Color(0xFFD0D5DD)
            ),
            borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1,
                color: Color(0xFF00B533)
            ),
            borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}
