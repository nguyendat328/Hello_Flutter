import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/view/home/home.dart';

import '../../icons/app_icon_icons.dart';
import '../../utils/Constants.dart';
import 'search.dart';

class SearchMain extends StatefulWidget {
  @override
  _SearchMain createState() => _SearchMain();
}

class _SearchMain extends State<SearchMain> {
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
        children: <Widget>[Search()],
      ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
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
