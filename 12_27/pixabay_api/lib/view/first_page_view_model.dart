import 'package:flutter/foundation.dart';
import 'package:pixabay_api/model/hits.dart';
import 'package:pixabay_api/repository/image_data_repository.dart';

class FirstPageViewModel with ChangeNotifier {
  final repository = NetworkImageRepository();
  List<Hits> imagedata = [];

  Future searchImage(String query) async {
    imagedata = await repository.getHitsData(
        query); // 레포지토리의 getHitsData함수(mapper하는) 실행 그리고 imagedata에 넣어줌
    notifyListeners();
  }
}
