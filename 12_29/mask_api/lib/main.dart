import 'package:flutter/material.dart';
import 'package:mask_api/repository/mask_data_repository.dart';
import 'package:mask_api/source/mask_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
              future: NetworkMaskDataRepository().getStoreData(),
              builder: (context, snapshot) {
                return Text(snapshot.data.toString());
              }),
        ),
      ),
    );
  }
}
