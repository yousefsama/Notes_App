import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.4),
        ),
        hintText: hint,
        border: bordermethod(),
        focusedBorder: bordermethod(),
      ),
    );
  }

  OutlineInputBorder bordermethod() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.cyan));
  }
}
