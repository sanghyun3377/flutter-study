// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ormcamp/core/result.dart';
import 'package:ormcamp/model/hits.dart';
import 'package:ormcamp/use_case/search_image_use_case.dart';

class PixabayPageViewModel with ChangeNotifier {
  final SearchImageUseCase _searchImageUseCase;

  PixabayPageViewModel({
    required searchImageUseCase,
  }) : _searchImageUseCase = searchImageUseCase;

  List<Hits> hitsdata = [];

  StreamController<String> _streamController = StreamController.broadcast();
  Stream<String> get streamController => _streamController.stream;

  Future searchImage(String query) async {
    if (query.isEmpty) {
      _streamController.add('검색어 없음');
      return;
    }
    var res = await _searchImageUseCase.execute(query);
    switch (res) {
      case Success<List<Hits>>():
        hitsdata = res.data;
      case Error<List<Hits>>():
        _streamController.add(res.e);
    }
    notifyListeners();
  }
}
