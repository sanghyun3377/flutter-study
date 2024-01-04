import 'package:pixabay_api/%08core/result.dart';
import 'package:pixabay_api/dto/pixabay_dto.dart';
import 'package:pixabay_api/mapper/dto_to_hits.dart';
import 'package:pixabay_api/model/hits.dart';
import 'package:pixabay_api/source/pixabay_api.dart';

// hits 데이터를 가져올 인터페이스
abstract interface class ImageDataRepository {
  Future<Result<List<Hits>>> getHitsData(String query);
}

// 네트워크에서 이미지를 가져와서 매핑한다
class NetworkImageRepository implements ImageDataRepository {
  var pixabayApidata = pixabayApi(); // api가져오는 객체 생성 메모리 절약

  @override
  Future<Result<List<Hits>>> getHitsData(String query) async {
    var res = await pixabayApidata
        .getPixabayData(query); // 전체 api(source)가져와서 res에 넣기
    switch (res) {
      case Success<PixabayDto>():
        return Result.success(
            res.data.hits?.map((e) => e.toHits()).toList() ?? []);
      case Error<PixabayDto>():
        return Result.error(res.e);
    }
  }
}

class MockImageRepository implements ImageDataRepository {
  var pixabayApidata = pixabayApi(); // api가져오는 객체 생성 메모리 절약

  @override
  Future<Result<List<Hits>>> getHitsData(String query) async {
    var res = await pixabayApidata
        .getPixabayData(query); // 전체 api(source)가져와서 res에 넣기
    switch (res) {
      case Success<PixabayDto>():
        return Result.success(
            res.data.hits?.map((e) => e.toHits()).toList() ?? []);
      case Error<PixabayDto>():
        return Result.error(res.e);
    }
  }
}
