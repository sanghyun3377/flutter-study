import 'package:flutter/material.dart';
import 'package:pixabay_api/di/di_setup.dart';
import 'package:pixabay_api/routers.dart';

void main() {
  diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
