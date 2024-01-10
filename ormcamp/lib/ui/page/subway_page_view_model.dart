import 'package:flutter/material.dart';
import 'package:ormcamp/model/subway.dart';
import 'package:ormcamp/repository/subway_data_repository.dart';

class SubwayPageViewModel with ChangeNotifier {
  final repository = NetworkSubwayRepository();
  List<Subway> subwayData = [];

  Future searchSubway(String station) async {
    subwayData = await repository.getSubwayData(station);
    notifyListeners();
  }
}
