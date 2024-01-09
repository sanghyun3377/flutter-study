import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class HitsDto {
  int? id;
  String? pageURL;
  String? type;
  String? tags;
  String? previewURL;
  int? previewWidth;
  int? previewHeight;
  String? webformatURL;
  int? webformatWidth;
  int? webformatHeight;
  String? largeImageURL;
  int? imageWidth;
  int? imageHeight;
  int? imageSize;
  int? views;
  int? downloads;
  int? collections;
  int? likes;
  int? comments;
  int? userId;
  String? user;
  String? userImageURL;
  HitsDto({
    this.id,
    this.pageURL,
    this.type,
    this.tags,
    this.previewURL,
    this.previewWidth,
    this.previewHeight,
    this.webformatURL,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageURL,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.collections,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pageURL': pageURL,
      'type': type,
      'tags': tags,
      'previewURL': previewURL,
      'previewWidth': previewWidth,
      'previewHeight': previewHeight,
      'webformatURL': webformatURL,
      'webformatWidth': webformatWidth,
      'webformatHeight': webformatHeight,
      'largeImageURL': largeImageURL,
      'imageWidth': imageWidth,
      'imageHeight': imageHeight,
      'imageSize': imageSize,
      'views': views,
      'downloads': downloads,
      'collections': collections,
      'likes': likes,
      'comments': comments,
      'user_id': userId,
      'user': user,
      'userImageURL': userImageURL,
    };
  }

  factory HitsDto.fromMap(Map<String, dynamic> map) {
    return HitsDto(
      id: map['id'] != null ? map['id'] as int : null,
      pageURL: map['pageURL'] != null ? map['pageURL'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      tags: map['tags'] != null ? map['tags'] as String : null,
      previewURL:
          map['previewURL'] != null ? map['previewURL'] as String : null,
      previewWidth:
          map['previewWidth'] != null ? map['previewWidth'] as int : null,
      previewHeight:
          map['previewHeight'] != null ? map['previewHeight'] as int : null,
      webformatURL:
          map['webformatURL'] != null ? map['webformatURL'] as String : null,
      webformatWidth:
          map['webformatWidth'] != null ? map['webformatWidth'] as int : null,
      webformatHeight:
          map['webformatHeight'] != null ? map['webformatHeight'] as int : null,
      largeImageURL:
          map['largeImageURL'] != null ? map['largeImageURL'] as String : null,
      imageWidth: map['imageWidth'] != null ? map['imageWidth'] as int : null,
      imageHeight:
          map['imageHeight'] != null ? map['imageHeight'] as int : null,
      imageSize: map['imageSize'] != null ? map['imageSize'] as int : null,
      views: map['views'] != null ? map['views'] as int : null,
      downloads: map['downloads'] != null ? map['downloads'] as int : null,
      collections:
          map['collections'] != null ? map['collections'] as int : null,
      likes: map['likes'] != null ? map['likes'] as int : null,
      comments: map['comments'] != null ? map['comments'] as int : null,
      userId: map['user_id'] != null ? map['user_id'] as int : null,
      user: map['user'] != null ? map['user'] as String : null,
      userImageURL:
          map['userImageURL'] != null ? map['userImageURL'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HitsDto.fromJson(String source) =>
      HitsDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
