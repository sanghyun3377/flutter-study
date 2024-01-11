import 'package:flutter/material.dart';
import 'package:ormcamp/di_setup.dart';
import 'package:ormcamp/model/hits.dart';

class ImageDetailScreen extends StatelessWidget {
  const ImageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hits = getIt<Hits>();
    return Scaffold(
      appBar: AppBar(title: const Text('이미지')),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.network(hits.previewURL),
          Text('태그 : ${hits.tags}'),
          Text('다운로드 수 : ${hits.downloads}'),
          Text('likes : ${hits.likes}'),
          Text('comments : ${hits.comments}'),
        ]),
      ),
    );
  }
}
