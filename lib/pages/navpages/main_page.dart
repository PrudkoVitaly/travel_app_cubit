import 'package:flutter/material.dart';

import 'bar_item_page.dart';
import 'home_page.dart';
import 'my_page.dart';
import 'search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
       currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type:  BottomNavigationBarType.fixed,
        selectedItemColor:  Colors.black54,
        unselectedItemColor: Colors.grey.withValues(alpha: 0.5),
        unselectedFontSize: 0,
        selectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap:  onTap,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.apps,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.bar_chart_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
