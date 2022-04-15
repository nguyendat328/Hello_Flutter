import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/view/home/home.dart';
import 'package:untitled/view/search/search_main.dart';

import '../icons/app_icon_icons.dart';
import '../model/book.dart';
import '../utils/Constants.dart';
import '../utils/api.dart';
import '../utils/database.dart';
import 'bookFilter/bookFilter.dart';
import 'library/library.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _page = 0;
  late PageController _pageController;


  void _onItemTapped(int page) async  {
    Book? book = await GetData.getBook('https://truyen.tangthuvien.vn/doc-truyen/lan-kha-ky-duyen');
    if( book != null){
      List< BookChapter> listChap = await GetData.getBookChapter(book.id);
      book_hive bookSave = book_hive(book.id,book.title,book.author,book.isSaved,book.isRead,book.onReadChap,book.datePublished
          ,book.aggregateRating,book.imageUrl, book.intro, listChap);
      HiveDatabase.insertBook(bookSave);
    }
    // setState(() {
    //   this._page = page;
    // });
    _pageController.jumpToPage(page);
  }
  void onPageChanged(int page) async {
    setState(() {
      this._page = page;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
       controller: _pageController,
       onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[ Home(),Library()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(AppIcon.book),
            label: Constants.BTN_READING,
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcon.stackoverflow),
            label: Constants.BTN_LIBRARY,
          )
        ],
        currentIndex: _page,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),

    );
  }
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

}
