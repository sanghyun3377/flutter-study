import 'package:flutter/material.dart';

import 'package:pixabay_api/repository/image_data_repository.dart';
import 'package:pixabay_api/states/main_states.dart';

class FirstPageViewModel with ChangeNotifier {
  // 데이터가 바뀌는걸 감시하는 기능 상속
  final searchTextEditingController = TextEditingController();
  final repository = NetworkImageRepository();
  // List<Hits> imagedata = [];
  MainState _mainState = MainState();
  MainState get mainState => _mainState;
  Future searchImage(String query) async {
    _mainState = _mainState.copyWith(
        imagedata: await repository.getHitsData(
            query)); // 레포지토리의 getHitsData함수(mapper하는) 실행 그리고 imagedata에 넣어줌
    notifyListeners(); // 데이터가 바뀐걸 알려줌
  }
}
