import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/view/home/home.dart';

import '../../icons/app_icon_icons.dart';
import '../../utils/Constants.dart';
import '../../utils/Router.dart';
import '../bookFilter/book_main.dart';
import 'bookDetail.dart';

class DetailMain extends StatefulWidget {



  @override
  _DetailMain createState() => _DetailMain();
}

class _DetailMain extends State<DetailMain> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    MyRoute.pushPage(context, BookMain());
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[BookDetail()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor:Colors.black,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(size: 20, color: Colors.grey),
        unselectedIconTheme: IconThemeData(size: 20, color: Colors.grey),
        selectedLabelStyle: TextStyle(
          fontSize: 16,
        ),
        unselectedLabelStyle: TextStyle(fontSize: 16),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(AppIcon.mirror),
            label: Constants.BTN_READ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: Constants.BTN_SAVE,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
