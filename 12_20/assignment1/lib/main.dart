import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('생일 축하 카드 만들기 ver 1')),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Happy\nBirthday\nSam!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 8),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'From Emma',
                  style: TextStyle(fontSize: 32),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
