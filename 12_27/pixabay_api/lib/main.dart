import 'package:flutter/material.dart';
import 'package:pixabay_api/routers.dart';
import 'package:pixabay_api/view/viewmodel/first_page_view_model.dart';
import 'package:pixabay_api/main_screen.dart';
import 'package:pixabay_api/view/viewmodel/secound_page_view_model.dart';
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
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
