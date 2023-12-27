// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:pixabay_api/dto/hits_dto.dart';

class PixabayDto {
  int? total;
  int? totalHits;
  List<HitsDto>? hits;
  PixabayDto({
    this.total,
    this.totalHits,
    this.hits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'total': total,
      'totalHits': totalHits,
      'hits': hits?.map((x) => x.toMap()).toList(),
    };
  }

  factory PixabayDto.fromMap(Map<String, dynamic> map) {
    return PixabayDto(
      total: map['total'] != null ? map['total'] as int : null,
      totalHits: map['totalHits'] != null ? map['totalHits'] as int : null,
      hits: map['hits'] != null
          ? List<HitsDto>.from(
              (map['hits'] as List<dynamic>).map<HitsDto?>(
                (x) => HitsDto.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PixabayDto.fromJson(String source) =>
      PixabayDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
