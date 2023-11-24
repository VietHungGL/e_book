import 'package:e_book/navpages/bar_item_page.dart';
import 'package:e_book/navpages/home_page.dart';
import 'package:e_book/navpages/my_page.dart';
import 'package:e_book/navpages/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage()
  ];
  int currentIn = 0;
  void onTaps(int index) {
    setState(() {
      currentIn = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIn],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.yellowAccent,
        onTap: onTaps,
        currentIndex: currentIn,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // elevation: 1,
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: 'Bar',
              icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: 'My',
              icon: Icon(Icons.person))
        ],
      ) ,
    );
  }
}
