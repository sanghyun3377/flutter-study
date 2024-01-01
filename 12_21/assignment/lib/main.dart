import 'package:electronicframe/longVideoWidget.dart';
import 'package:electronicframe/shortsVideoWidget.dart';
import 'package:electronicframe/topListCardWidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white,
          leading: FlutterLogo(),
          title: Text('Fluttertube'),
          elevation: 0,
          shape: Border(bottom: BorderSide(color: Colors.white12, width: 1)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.airplay),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notification_add),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: ListView(children: [
          SizedBox(
            height: 44,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TopListCardWidget(title: '전체'),
                TopListCardWidget(title: '게임'),
                TopListCardWidget(title: '뉴스'),
                TopListCardWidget(title: '실시간'),
                TopListCardWidget(title: '믹스'),
                TopListCardWidget(title: '액션 어드벤처 게임'),
                TopListCardWidget(title: '요리'),
                TopListCardWidget(title: '만화 영화'),
              ],
            ),
          ),
          Stack(
            children: [
              LongVideoWidget(
                url: 'https://picsum.photos/1920/1080',
                avatorURL: "https://picsum.photos/100/100",
                title: '스파6 - 세번 잡히면 죽습니다.',
                subtitle: '아빠킴 - 조회수 4만회 • 9시간 전',
              ),
              Positioned(
                  top: 231,
                  child: Row(
                    children: [
                      Container(height: 3, width: 80, color: Colors.red),
                      Icon(
                        Icons.circle,
                        color: Colors.red,
                      )
                    ],
                  ))
            ],
          ),
          LongVideoWidget(
            url: 'https://picsum.photos/1900/1060',
            avatorURL: "https://picsum.photos/100/101",
            title: '(내공 100)테이저건 많이 아픈가요?😫 | 정상수X서출구 | [당산역 3번 출구 EP.11]',
            subtitle: '당산역 3번 출구 - 조회수 882회 • 1시간 전',
          ),
          Row(
            children: [
              Icon(
                Icons.stacked_line_chart_outlined,
                color: Colors.red,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Shorts',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ShortsVideoWidget(
                  url: 'https://picsum.photos/2000/3000',
                  title: '[젤다 왕눈]패러세일 없이 지저 내려가기 ㅋㅋㅋㅋ #젤다]',
                  hits: '조회수 11만회',
                ),
                ShortsVideoWidget(
                    url: 'https://picsum.photos/2000/3001',
                    title: '한국 남자 혼자 밤 10시 쯤 시부야를 혼자 걸으면 듣는말',
                    hits: '조회수 2만회'),
                ShortsVideoWidget(
                    url: 'https://picsum.photos/2000/3002',
                    title: '태어나 처음으로 부딪히자.. 녀석의 반응',
                    hits: '조회수 98만회'),
                ShortsVideoWidget(
                    url: 'https://picsum.photos/2000/3003',
                    title: '한 남자가 허리케인 직후 집에서 발견한것 #shorts',
                    hits: '조회수 10만회'),
              ],
            ),
          ),
          LongVideoWidget(
            url: 'https://picsum.photos/1910/1070',
            avatorURL: "https://picsum.photos/100/102",
            title: '프론트엔드 모니터링 모범 사례',
            subtitle: '모던 프론트엔드 - 조회수 10만회 • 17시간 전',
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_line_chart_outlined), label: 'Shorts'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 40,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined), label: '구독'),
            BottomNavigationBarItem(
                icon: Icon(Icons.playlist_play_sharp), label: '보관함'),
          ],
        ),
      ),
    );
  }
}
