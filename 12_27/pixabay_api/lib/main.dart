import 'package:flutter/material.dart';
import 'package:pixabay_api/view/first_page.dart';
import 'package:pixabay_api/view/first_page_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider.value(
      value: FirstPageViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FristPage(),
    );
  }
}
