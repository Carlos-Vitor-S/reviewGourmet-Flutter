import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String labeltext;

  const CustomInputField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.labeltext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
              width: 2.0,
              style: BorderStyle.solid,
            )),
            labelText: labeltext,
            hintText: hintText,
          )),
    );
  }
}
