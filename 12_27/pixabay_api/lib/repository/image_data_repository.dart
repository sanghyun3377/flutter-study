import 'package:pixabay_api/mapper/dto_to_hits.dart';
import 'package:pixabay_api/model/hits.dart';
import 'package:pixabay_api/source/pixabay_api.dart';

abstract interface class ImageDataRepository {
  Future<List<Hits>> getHitsData(String query);
}

class NetworkImageRepository implements ImageDataRepository {
  var pixabayApidata = pixabayApi();
  @override
  Future<List<Hits>> getHitsData(String query) async {
    var res = await pixabayApidata.getPixabayData(query);
    if (res.hits == null) {
      return [];
    }
    return res.hits!.map((e) => e.toHits()).toList();
  }
}
