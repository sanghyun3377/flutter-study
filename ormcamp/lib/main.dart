import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ormcamp/source/pixabay_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    PixabayApi(dio: Dio()).getPixabayData('cats');
    return const Placeholder();
  }
}
