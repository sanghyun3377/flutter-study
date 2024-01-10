import 'package:ormcamp/core/result.dart';
import 'package:ormcamp/dto/pixabay_dto.dart';
import 'package:ormcamp/mapper/hits_dto_to_hits.dart';
import 'package:ormcamp/model/hits.dart';
import 'package:ormcamp/source/pixabay_api.dart';

abstract interface class ImageDataRepository {
  Future<Result<List<Hits>>> getHitsData(String query);
}

class NetworkImageDataRepository implements ImageDataRepository {
  final _pixabayApi = PixabayApi();

  @override
  Future<Result<List<Hits>>> getHitsData(String query) async {
    var res = await _pixabayApi.getPixabayData(query);
    switch (res) {
      case Success<PixabayDto>():
        if (res.data.hits == null || res.data.hits!.isEmpty) {
          return const Result.error('검색된이미지없음');
        }
        return Result.success(res.data.hits!.map((e) => e.toHits()).toList());
      case Error<PixabayDto>():
        return Result.error(res.e);
    }
  }
}
