import 'package:ormcamp/model/hits.dart';
import 'package:ormcamp/repository/image_data_repository.dart';

import '../core/result.dart';

class SearchImageUseCase {
  final ImageDataRepository _repository;

  SearchImageUseCase({required ImageDataRepository repository})
      : _repository = repository;

  Future<Result<List<Hits>>> execute(String query) async {
    return await _repository.getHitsData(query);
  }
}
