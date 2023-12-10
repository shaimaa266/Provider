import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final hintText;

  final TextEditingController? controller;
  final TextInputType? textInputType;

  CustomTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 370,
        height: 55,
        decoration: const BoxDecoration(
          color: Colors.white54,
        ),
        child: TextField(
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey)),

        ),
      ),
    );
  }
}
