import 'package:pixabay_api/mapper/dto_to_hits.dart';
import 'package:pixabay_api/model/hits.dart';
import 'package:pixabay_api/source/pixabay_api.dart';

// hits 데이터를 가져올 인터페이스
abstract interface class ImageDataRepository {
  Future<List<Hits>> getHitsData(String query);
}

// 네트워크에서 이미지를 가져와서 매핑한다
class NetworkImageRepository implements ImageDataRepository {
  var pixabayApidata = pixabayApi(); // api가져오는 객체 생성 메모리 절약

  @override
  Future<List<Hits>> getHitsData(String query) async {
    var res = await pixabayApidata
        .getPixabayData(query); // 전체 api(source)가져와서 res에 넣기
    return res.hits?.map((e) => e.toHits()).toList() ??
        []; // 전체 api중 hits에 접근해서 mapper(.toHits)작업
  }
}
