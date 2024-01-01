// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:mask_api/dto/store_dto.dart';

class MaskDto {
  int? count;
  List<StoreDto>? stores;
  MaskDto({
    this.count,
    this.stores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'stores': stores?.map((x) => x.toMap()).toList(),
    };
  }

  factory MaskDto.fromMap(Map<String, dynamic> map) {
    return MaskDto(
      count: map['count'] != null ? map['count'] as int : null,
      stores: map['stores'] != null
          ? List<StoreDto>.from(
              (map['stores'] as List<dynamic>).map<StoreDto?>(
                (x) => StoreDto.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MaskDto.fromJson(String source) =>
      MaskDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
