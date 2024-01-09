import 'package:flutter/material.dart';
import 'package:ormcamp/ui/page/pixabay_page.dart';
import 'package:ormcamp/ui/page/subway_page.dart';

class MainScreenViewModel with ChangeNotifier {
  final List<Widget> _pageList = const <Widget>[
    PixabayPage(),
    SubwayPage(),
  ];
  List<Widget> get pageList => _pageList;
  int _selectedIndex = 0; // 선택된 페이지
  int get selectedIndex => _selectedIndex;
  onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
