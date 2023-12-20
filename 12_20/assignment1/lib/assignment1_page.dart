// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class Assignment1Page extends StatelessWidget {
  const Assignment1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  fontSize: 56, fontWeight: FontWeight.bold, letterSpacing: 8),
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
    );
  }
}
