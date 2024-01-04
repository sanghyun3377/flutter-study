import 'package:flutter/material.dart';
import 'package:pixabay_api/model/hits.dart';
import 'package:pixabay_api/repository/image_data_repository.dart';

class ServeScreenViewModel with ChangeNotifier {
  final searchTextEditingController = TextEditingController();
  final repository = NetworkImageRepository();
  List<Hits> imagedata = [];

  // Future searchImage(String query) async {
  //   imagedata = await repository.getHitsData(
  //       query); // 레포지토리의 getHitsData함수(mapper하는) 실행 그리고 imagedata에 넣어줌
  //   notifyListeners(); // 데이터가 바뀐걸 알려줌
  // }
}
