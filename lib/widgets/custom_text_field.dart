import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.fontSize,
    this.maxLines = 1,
  });
  final String hintText;
  final double fontSize;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      style: TextStyle(fontSize: fontSize),
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: fontSize),
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
