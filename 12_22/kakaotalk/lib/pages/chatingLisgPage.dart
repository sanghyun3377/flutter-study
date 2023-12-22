import 'package:flutter/material.dart';
import 'package:kakaotalk/widget/chatListTile.dart';
import 'package:kakaotalk/widget/threeAvatarWidget.dart';
import 'package:kakaotalk/widget/twoAavatarWidget.dart';

class ChatingListPage extends StatelessWidget {
  const ChatingListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.chat_outlined),
          ),
          Icon(Icons.settings)
        ],
      ),
      body: ListView(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(36),
              child: Image.asset('assets/kakaotalk.png')),
          TwoAvatarWidget(),
          ChatListTile(
              title: '김민수',
              subtitle: '반갑습니다다다닫다ㅏㄷ',
              date: '오전 1:06',
              imgURL: 'https://picsum.photos/100/101'),
          ChatListTile(
              title: '김유리',
              subtitle: '사진',
              date: '오후 9:06',
              imgURL: 'https://picsum.photos/100/102'),
          ChatListTile(
              title: '유명한밈전파자',
              subtitle:
                  '장충동 왕족발 보쌈 이거보세용요요요요요요용요용요ㅛㅇ요맛있게 먹어요요요요요 완전긴 텍스트 rmfwkfdsafdsfdsfdsfsfdsfdsfdsfkdsoafmdksoafkas',
              date: '1일 전',
              imgURL: 'https://picsum.photos/100/103'),
          ChatListTile(
              title: '훈이',
              subtitle: '훈이입니다 당신은 누구십니깐???????',
              date: '10일 전',
              imgURL: 'https://picsum.photos/100/104'),
          ThreeAvatarWidget(),
          ChatListTile(
              title: '원장님',
              subtitle:
                  '안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요안녕하세요 저는 철수예요',
              date: '오전 11:06',
              imgURL: 'https://picsum.photos/100/106'),
          ChatListTile(
              title: '맹구',
              subtitle: '안녕하세요 저는 철수예요',
              date: '오전 11:06',
              imgURL: 'https://picsum.photos/100/107'),
          ChatListTile(
              title: '짱구엄마',
              subtitle: '안녕하세요 저는 철수예요',
              date: '오전 11:06',
              imgURL: 'https://picsum.photos/100/108'),
          ChatListTile(
              title: '짱아',
              subtitle: '안녕하세요 저는 철수예요',
              date: '오전 11:06',
              imgURL: 'https://picsum.photos/100/109'),
          ChatListTile(
              title: '나공주',
              subtitle: '안녕하세요 저는 철수예요',
              date: '오전 11:06',
              imgURL: 'https://picsum.photos/100/110'),
          ChatListTile(
              title: '흰둥이',
              subtitle: '안녕하세요 저는 철수예요',
              date: '오전 11:06',
              imgURL: 'https://picsum.photos/100/111'),
          ChatListTile(
              title: '짱구아빠',
              subtitle: '안녕하세요 저는 철수예요',
              date: '오전 11:06',
              imgURL: 'https://picsum.photos/100/112'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ''),
        ],
      ),
    );
  }
}
