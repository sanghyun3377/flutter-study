import 'package:pixabay_api/dto/hits_dto.dart';
import 'package:pixabay_api/model/hits.dart';

// HitsDto 를 Hits model에 매핑
extension DtoToHits on HitsDto { // HitsDto에 접근하겠다. 익스텐션명은 아무거나 상관 x
  Hits toHits() { //model에 Hits를 가져온다
    return Hits(
      webformatURL: webformatURL ?? '', //model : dto 매핑 만약 dto데이터가 없으면 '' 처리
      tags: tags ?? '',
      type: type ?? '',
    );
  }
}
