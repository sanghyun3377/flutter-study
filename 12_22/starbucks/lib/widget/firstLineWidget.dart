import 'package:flutter/material.dart';

class FirstLineWidget extends StatelessWidget {
  const FirstLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'What\'s New',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(),
        Text(
          'See all',
          style: TextStyle(fontSize: 24, color: Colors.green),
        )
      ],
    );
  }
}
