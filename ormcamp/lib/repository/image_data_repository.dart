import 'package:ormcamp/mapper/hits_dto_to_hits.dart';
import 'package:ormcamp/model/hits.dart';
import 'package:ormcamp/source/pixabay_api.dart';

abstract interface class ImageDataRepository {
  Future<List<Hits>> getHitsData(String query);
}

class NetworkImageDataRepository implements ImageDataRepository {
  var pixabayApi = PixabayApi();

  @override
  Future<List<Hits>> getHitsData(String query) async {
    var res = await pixabayApi.getPixabayData(query);
    var data = res.hits?.map((e) => e.toHits()).toList() ?? [];
    return data;
  }
}
