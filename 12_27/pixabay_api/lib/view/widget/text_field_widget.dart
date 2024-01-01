import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key, required this.controller, required this.suffixIconOnPressed});
  final TextEditingController controller;
  final VoidCallback suffixIconOnPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 2,
            color: Color(0xFF4FB6B2),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 2,
            color: Color(0xFF4FB6B2),
          ),
        ),
        hintText: 'Search',
        suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Color(0xFF4FB6B2),
            ),
            onPressed: suffixIconOnPressed),
      ),
    );
  }
}
