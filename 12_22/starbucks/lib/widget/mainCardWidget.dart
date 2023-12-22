import 'package:flutter/material.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Image.asset('assets/01_01_2023_winter_e-frequency.png'),
      ),
    );
  }
}
