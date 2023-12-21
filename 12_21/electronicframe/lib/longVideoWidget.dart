import 'package:flutter/material.dart';

class LongVideoWidget extends StatelessWidget {
  const LongVideoWidget(
      {super.key,
      required this.url,
      required this.title,
      required this.subtitle,
      required this.avatorURL});
  final String url;
  final String title;
  final String subtitle;
  final String avatorURL;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.network(url),
      Container(
        height: 1,
        color: Colors.white,
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(avatorURL),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.more_vert),
      )
    ]);
  }
}
