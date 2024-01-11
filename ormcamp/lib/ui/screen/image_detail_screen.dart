import 'package:flutter/material.dart';

class ImageDetailScreen extends StatelessWidget {
  const ImageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('이미지')),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text('tags'),
          Text('previewURL'),
          Text('downloads'),
          Text('likes'),
          Text('comments'),
        ]),
      ),
    );
  }
}
