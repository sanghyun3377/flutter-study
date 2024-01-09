import 'package:flutter/material.dart';
import 'package:ormcamp/ui/screen/main_screen_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mainScreenViewModel = context.watch<MainScreenViewModel>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: mainScreenViewModel.pageList[mainScreenViewModel.selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          mainScreenViewModel.onItemTapped(index);
        },
        currentIndex: mainScreenViewModel.selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'pixabay'),
          BottomNavigationBarItem(icon: Icon(Icons.subway), label: 'subway'),
        ],
      ),
    );
  }
}
