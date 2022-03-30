import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/view/home/home.dart';
import 'package:untitled/view/search/search_main.dart';

import '../icons/app_icon_icons.dart';
import '../utils/Constants.dart';
import 'bookFilter/bookFilter.dart';
import 'library/library.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  static const TextStyle selectedStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetSelected = <Widget>[
    Text(
      'Index 0: home',
      style: selectedStyle,
    ),
    Text(
      'Index 1: library',
      style: selectedStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[Home()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(AppIcon.book),
            label: Constants.BTN_READING,
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcon.stackoverflow),
            label: Constants.BTN_LIBRARY,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),

    );
  }
}
