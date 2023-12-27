import 'package:flutter/material.dart';

class SearchTextfieldWidget extends StatelessWidget {
  const SearchTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final searchTextEditingController = TextEditingController();
    return TextField(
      controller: searchTextEditingController,
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
          onPressed: () {},
        ),
      ),
    );
  }
}
