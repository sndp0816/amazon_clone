import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLine;
  const CustomTextField(
      {super.key, required this.controller, required this.hintText, this.maxLine=1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
        ),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'enter your $hintText';
        }
        return null;
      },
      maxLines: maxLine,
    );
  }
}
