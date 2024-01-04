import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pixabay_api/%08core/result.dart';
import 'package:pixabay_api/%08core/result_event.dart';
import 'package:pixabay_api/model/hits.dart';

import 'package:pixabay_api/repository/image_data_repository.dart';
import 'package:pixabay_api/states/main_states.dart';

class FirstPageViewModel with ChangeNotifier {
  // 데이터가 바뀌는걸 감시하는 기능 상속
  final searchTextEditingController = TextEditingController();
  final repository = NetworkImageRepository();
  // List<Hits> imagedata = [];
  MainState _mainState = MainState();
  MainState get mainState => _mainState;
  StreamController<ResultEvent> _streamController = StreamController();
  Stream<ResultEvent> get streamController => _streamController.stream;
  Future searchImage(String query) async {
    if (query.isEmpty) {
      _streamController.add(ResultEvent.showSnackBar('검색어 입력하세요'));
      return;
    }
    var result = await repository.getHitsData(query);
    switch (result) {
      case Success<List<Hits>>():
        // _mainState = _mainState.copyWith(
        // imagedata: await repository.getHitsData(
        //     query)); // 기존 코드
        _mainState = _mainState.copyWith(imagedata: result.data);
      case Error<List<Hits>>():
        _streamController.add(ResultEvent.showDialog(result.e));
    }
    notifyListeners(); // 데이터가 바뀐걸 알려줌
  }
}
