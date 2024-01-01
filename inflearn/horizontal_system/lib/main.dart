import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp2(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    final centerX = MediaQuery.of(context).size.width / 2 -
        50; //뒤에 50은 컨테이너의 width의 반값을 빼준다.
    final centerY = MediaQuery.of(context).size.height / 2 - 50;
    return Scaffold(
      body: Stack(children: [
        StreamBuilder<AccelerometerEvent>(
            //AccelerometerEvent 데이터 타입을 받는다
            stream: accelerometerEvents, //stream으로 accelerometerEvents값들이 들어온다
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }
              final event = snapshot.data!;
              List<double> acceleromenterValues = [event.x, event.y, event.z];
              print(acceleromenterValues);
              return Positioned(
                left: centerX,
                top: centerY,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                  ),
                  width: 100,
                  height: 100,
                ),
              );
            })
      ]),
    );
  }
}
