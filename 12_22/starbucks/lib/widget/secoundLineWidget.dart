import 'package:flutter/material.dart';

class SecoundLineWidget extends StatelessWidget {
  const SecoundLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 280,
                  height: 180,
                  child: Image.asset('assets/04_01_cardnews.png'),
                ),
                Text(
                  '스타벅스 앱 보안 강화',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    width: 280,
                    child: Text(
                        '안전한 서비스 이용을 위하여 Pay탭 이용, 다중 기기/ 해외 로그인 . 시인증 절차 적용'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 280,
                  height: 180,
                  child: Image.asset('assets/04_02_cardnews.png'),
                ),
                Text(
                  '스타벅스 앱 보안 강화',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    width: 280,
                    child: Text(
                        '안전한 서비스 이용을 위하여 Pay탭 이용, 다중 기기/ 해외 로그인 . 시인증 절차 적용'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
