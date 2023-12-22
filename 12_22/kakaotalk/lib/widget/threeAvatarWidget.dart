import 'package:flutter/material.dart';
import 'package:kakaotalk/widget/avatarWidget.dart';

class ThreeAvatarWidget extends StatelessWidget {
  const ThreeAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            width: 54,
            color: Colors.black,
          ),
          Positioned(
            left: 12,
            child: SizedBox(
                height: 32,
                width: 32,
                child: AavatarWidget(imgURL: 'https://picsum.photos/101/100')),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: SizedBox(
                width: 32,
                height: 32,
                child: AavatarWidget(imgURL: 'https://picsum.photos/102/100')),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
                width: 32,
                height: 32,
                child: AavatarWidget(imgURL: 'https://picsum.photos/103/100')),
          ),
        ],
      ),
      title: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: '3명있는 채팅방', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' 3', style: TextStyle(color: Colors.grey))
        ]),
      ),
      subtitle: Text(
        '우리는 3인파티',
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Column(
        children: [Text('21일전')],
      ),
    );
  }
}
