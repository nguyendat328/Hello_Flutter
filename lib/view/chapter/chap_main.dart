import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/view/home/home.dart';

import '../../icons/app_icon_icons.dart';
import '../../utils/Constants.dart';
import 'chap.dart';

class ChapMain extends StatefulWidget {
  @override
  _ChapMain createState() => _ChapMain();
}

class _ChapMain extends State<ChapMain> {
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
        children: <Widget>[Chap()],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      // type: BottomNavigationBarType.fixed,
      // items:  <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(
      //     icon: Icon(AppIcon.book_open),
      //
      //     label: 'Đấu La đại lục',
      //
      //   ),
      //
      // ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.white,
      //   onTap: _onItemTapped,
      // ),
    );
  }

}
