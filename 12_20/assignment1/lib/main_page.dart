import 'package:assignment1/assignment1_page.dart';
import 'package:assignment1/assignment2_page.dart';
import 'package:assignment1/assignment3_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('생일 축하 카드 만들기 ver 1'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Assignment1Page(),
                    ));
              },
            ),
            ElevatedButton(
              child: Text('생일 축하 카드 만들기 ver 2'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Assignment2Page(),
                    ));
              },
            ),
            ElevatedButton(
              child: Text('생일 축하 카드 만들기 ver 3'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Assignment3Page(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
