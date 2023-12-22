import 'package:flutter/material.dart';
import 'package:kakaotalk/widget/avatarWidget.dart';

class TwoAvatarWidget extends StatelessWidget {
  const TwoAvatarWidget({super.key});

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
            left: 0,
            child: SizedBox(
                height: 40,
                width: 40,
                child: AavatarWidget(imgURL: 'https://picsum.photos/101/100')),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
                width: 40,
                height: 40,
                child: AavatarWidget(imgURL: 'https://picsum.photos/102/100')),
          )
        ],
      ),
      title: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: '짱구, 짱아', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' 2', style: TextStyle(color: Colors.grey))
        ]),
      ),
      subtitle: Text('집에 밥있음?'),
      trailing: Column(
        children: [Text('1분전')],
      ),
    );
  }
}
