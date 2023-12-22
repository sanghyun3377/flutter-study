import 'package:flutter/material.dart';
import 'package:kakaotalk/widget/avatarWidget.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.imgURL});
  final String title;
  final String subtitle;
  final String date;
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: AavatarWidget(
          imgURL: imgURL,
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.grey),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          children: [
            Text(date),
          ],
        ),
      ),
    );
  }
}
