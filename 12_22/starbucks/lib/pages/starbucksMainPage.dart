import 'package:flutter/material.dart';
import 'package:starbucks/widget/bannerWidget.dart';
import 'package:starbucks/widget/firstLineWidget.dart';
import 'package:starbucks/widget/mainCardWidget.dart';
import 'package:starbucks/widget/secoundLineWidget.dart';
import 'package:starbucks/widget/thirdLineWidget.dart';

class StarbucksMainPage extends StatelessWidget {
  const StarbucksMainPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 220.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/starbucks-main.png',
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      Positioned(
                          bottom: -5,
                          right: 24,
                          child: Text(
                            '내용보기 〉〉',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1 ★ until Green Level',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey[700],
                              ),
                              width: 200,
                              height: 10,
                            ),
                          ],
                        ),
                        Spacer(),
                        RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                              children: [
                                TextSpan(
                                    text: '4',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: ' / 5★',
                                    style: TextStyle(color: Colors.grey))
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              titlePadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.mail_outline),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Text(
                        "What's New",
                        style:
                            TextStyle(color: Colors.black, letterSpacing: -3),
                      ),
                    ),
                    Icon(Icons.confirmation_num_outlined),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Text(
                        'Coupon',
                        style:
                            TextStyle(color: Colors.black, letterSpacing: -3),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Stack(
                      children: [
                        Icon(Icons.notifications_none_outlined),
                        Positioned(
                            right: 1,
                            child: Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 12,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                MainCardWidget(),
                BannerWidget(),
                FirstLineWidget(),
                SecoundLineWidget(),
                ThirdLineWidget(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.bike_scooter,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.green,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Pay'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.coffee,
              ),
              label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Other'),
        ],
      ),
    );
  }
}
