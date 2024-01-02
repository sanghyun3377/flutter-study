import 'package:flutter/material.dart';
import 'package:pixabay_api/view/page/first_page.dart';
import 'package:pixabay_api/view/page/first_page_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      // ChangeNotifierProvider.value(
      //   // 변경점이 있는지 감시
      //   value: FirstPageViewModel(),
      //   child: MyApp(),
      // ),
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider(
      create: (_) => FirstPageViewModel(),
      child: FristPage(),
    ));
  }
}
