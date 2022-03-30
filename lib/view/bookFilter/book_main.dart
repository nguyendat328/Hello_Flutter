import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/view/home/home.dart';

import '../../icons/app_icon_icons.dart';
import '../../utils/Constants.dart';
import 'bookFilter.dart';

class BookMain extends StatefulWidget {
  @override
  _BookMain createState() => _BookMain();
}

class _BookMain extends State<BookMain> {
  int _selectedIndex = 0;

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
        children: <Widget>[BookFilter()],
      ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      elevation: 3,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(AppIcon.crossed_swords),

          label: Constants.BTN_NAM,
          backgroundColor: Colors.cyan[900],
        ),
        BottomNavigationBarItem(
          icon: Icon(AppIcon.clover),
          label: Constants.BTN_NU,
          backgroundColor: Colors.pink,


        ),
      ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }

}
