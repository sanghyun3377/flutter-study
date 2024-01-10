import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Subway {
  String trainLineNm;
  String statnNm;
  String arvlMsg2;
  Subway({
    required this.trainLineNm,
    required this.statnNm,
    required this.arvlMsg2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainLineNm': trainLineNm,
      'statnNm': statnNm,
      'arvlMsg2': arvlMsg2,
    };
  }

  factory Subway.fromMap(Map<String, dynamic> map) {
    return Subway(
      trainLineNm: map['trainLineNm'] as String,
      statnNm: map['statnNm'] as String,
      arvlMsg2: map['arvlMsg2'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Subway.fromJson(String source) =>
      Subway.fromMap(json.decode(source) as Map<String, dynamic>);
}
