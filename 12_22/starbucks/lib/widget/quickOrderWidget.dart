import 'package:flutter/material.dart';

class QuickOrderWidget extends StatelessWidget {
  const QuickOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Quick Order',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(),
        Text(
          '최근 주문',
          style: TextStyle(
            fontSize: 24,
          ),
        )
      ],
    );
  }
}
