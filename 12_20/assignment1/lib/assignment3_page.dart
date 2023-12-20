import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Assignment3Page extends StatelessWidget {
  const Assignment3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('생일 축하 카드 만들기 ver 2')),
      body: Stack(children: [
        SizedBox(
          height: 1000,
          child: Image.network(
            'https://images.unsplash.com/photo-1600172454132-ada7faa101cf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEzMHxpVUlzblZ0akIwWXx8ZW58MHx8fHx8',
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Happy Birthday Sam!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  '-from Emma',
                  style: TextStyle(fontSize: 32),
                )
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
