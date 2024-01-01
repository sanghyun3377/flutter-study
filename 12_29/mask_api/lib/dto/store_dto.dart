import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class StoreDto {
  String? addr;
  String? code;
  String? createdAt;
  double? lat;
  double? lng;
  String? name;
  String? remainStat;
  String? stockAt;
  String? type;
  StoreDto({
    this.addr,
    this.code,
    this.createdAt,
    this.lat,
    this.lng,
    this.name,
    this.remainStat,
    this.stockAt,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addr': addr,
      'code': code,
      'created_at': createdAt,
      'lat': lat,
      'lng': lng,
      'name': name,
      'remain_stat': remainStat,
      'stock_at': stockAt,
      'type': type,
    };
  }

  factory StoreDto.fromMap(Map<String, dynamic> map) {
    return StoreDto(
      addr: map['addr'] != null ? map['addr'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
      createdAt: map['created_at'] != null ? map['created_at'] as String : null,
      lat: map['lat'] != null ? map['lat'] as double : null,
      lng: map['lng'] != null ? map['lng'] as double : null,
      name: map['name'] != null ? map['name'] as String : null,
      remainStat:
          map['remain_stat'] != null ? map['remain_stat'] as String : null,
      stockAt: map['stock_at'] != null ? map['stock_at'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StoreDto.fromJson(String source) =>
      StoreDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
