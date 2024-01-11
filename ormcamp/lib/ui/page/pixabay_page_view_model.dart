import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ormcamp/core/result.dart';
import 'package:ormcamp/model/hits.dart';
import 'package:ormcamp/repository/image_data_repository.dart';

class PixabayPageViewModel with ChangeNotifier {
  PixabayPageViewModel({required ImageDataRepository repository})
      : _repository = repository;

  final ImageDataRepository _repository;

  List<Hits> hitsdata = [];
  StreamController<String> _streamController = StreamController.broadcast();
  Stream<String> get streamController => _streamController.stream;

  Future search(String query) async {
    if (query.isEmpty) {
      _streamController.add('검색어 없음');
      return;
    }
    var res = await _repository.getHitsData(query);
    switch (res) {
      case Success<List<Hits>>():
        hitsdata = res.data;
      case Error<List<Hits>>():
        _streamController.add(res.e);
    }
    notifyListeners();
  }
}
