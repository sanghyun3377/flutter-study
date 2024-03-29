import 'package:flutter/material.dart';
import 'package:ormcamp/di_setup.dart';
import 'package:ormcamp/router.dart';

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
