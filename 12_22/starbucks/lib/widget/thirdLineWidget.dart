import 'package:flutter/material.dart';

class ThirdLineWidget extends StatelessWidget {
  const ThirdLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Image.asset('assets/05_01_card.png'),
            color: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Image.asset('assets/05_02_card.png'),
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
