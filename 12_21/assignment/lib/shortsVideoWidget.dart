import 'package:flutter/material.dart';

class ShortsVideoWidget extends StatelessWidget {
  const ShortsVideoWidget(
      {super.key, required this.url, required this.title, required this.hits});
  final String url;
  final String title;
  final String hits;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(children: [
          Image.network(url, fit: BoxFit.cover),
          Positioned(right: 8, top: 8, child: Icon(Icons.more_vert)),
          Positioned(
              bottom: 24,
              child: Container(
                margin: EdgeInsets.all(8),
                width: 160,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          Positioned(bottom: 8, left: 8, child: Text(hits))
        ]),
      ),
    );
  }
}
