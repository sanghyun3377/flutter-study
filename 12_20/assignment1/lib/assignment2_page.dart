import 'package:flutter/material.dart';

class Assignment2Page extends StatelessWidget {
  const Assignment2Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('생일 축하 카드 만들기 ver 2')),
      body: Stack(children: [
        SizedBox(
          height: 2000,
          child: Image.network(
            'https://plus.unsplash.com/premium_photo-1661761724717-195fd9c465bc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8fA%3D%3D',
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: const EdgeInsets.all(8.0),
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
      ]),
    );
  }
}
