import 'package:pixabay_api/dto/hits_dto.dart';
import 'package:pixabay_api/model/hits.dart';

extension DtoToHits on HitsDto {
  Hits toHits() {
    return Hits(
      webformatURL: webformatURL ?? '',
      tags: tags ?? '',
      type: type ?? '',
    );
  }
}
