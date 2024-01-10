import 'package:flutter/widgets.dart';
import 'package:ormcamp/model/hits.dart';
import 'package:ormcamp/repository/image_data_repository.dart';

class PixabayPageViewModel with ChangeNotifier {
  final repository = NetworkImageDataRepository();
  List<Hits> hitsdata = [];
  Future search(String query) async {
    hitsdata = await repository.getHitsData(query);
    notifyListeners();
  }
}
