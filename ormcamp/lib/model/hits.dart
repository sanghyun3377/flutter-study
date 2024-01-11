// ignore_for_file: public_member_api_docs, sort_constructors_first
class Hits {
  String tags;
  String previewURL;
  int downloads;
  int likes;
  int comments;
  Hits({
    required this.tags,
    required this.previewURL,
    required this.downloads,
    required this.likes,
    required this.comments,
  });

  @override
  String toString() {
    return 'Hits(tags: $tags, previewURL: $previewURL, downloads: $downloads, likes: $likes, comments: $comments)';
  }
}
