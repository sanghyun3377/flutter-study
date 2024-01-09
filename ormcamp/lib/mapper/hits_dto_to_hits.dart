import 'package:ormcamp/dto/hits_dto.dart';
import 'package:ormcamp/model/hits.dart';

extension HitsDtoToHits on HitsDto {
  Hits toHits() {
    return Hits(
      tags: tags ?? '',
      previewURL: previewURL ?? '',
      downloads: downloads ?? 0,
      likes: likes ?? 0,
      comments: comments ?? 0,
    );
  }
}
