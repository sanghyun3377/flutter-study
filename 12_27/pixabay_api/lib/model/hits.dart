import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Hits {
  String webformatURL;
  String tags;
  String type;
  Hits({
    required this.webformatURL,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webformatURL': webformatURL,
      'tags': tags,
      'type': type,
    };
  }

  factory Hits.fromMap(Map<String, dynamic> map) {
    return Hits(
      webformatURL: map['webformatURL'] as String,
      tags: map['tags'] as String,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Hits.fromJson(String source) =>
      Hits.fromMap(json.decode(source) as Map<String, dynamic>);
}
