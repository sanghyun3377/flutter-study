import 'package:flutter/material.dart';

class TopListCardWidget extends StatelessWidget {
  const TopListCardWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
