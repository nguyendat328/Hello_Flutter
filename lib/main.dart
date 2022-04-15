import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled/utils/database.dart';
import 'package:untitled/view/bookDetail/bookDetail.dart';
import 'package:untitled/view/bookDetail/detail_main.dart';
import 'package:untitled/view/bookFilter/book_main.dart';
import 'package:untitled/view/chapter/chap_main.dart';
import 'package:untitled/view/search/search_main.dart';
import '../view/main_screen.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'model/book.dart';
Future<void> main()   async {
  Hive.registerAdapter(BookChapterAdapter()) ;
  Hive.registerAdapter(bookhiveAdapter()) ;
  HiveDatabase.innitHive();
  runApp(const MyApp());
 // Hive.registerAdapter(book_hive(), 0);

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         // primarySwatch: Colors.blue,
          primaryColor: Colors.cyan[900],
          dividerTheme: const DividerThemeData(
            space: 0,
            color: Colors.black45,
          ),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
              actionsIconTheme: IconThemeData(color: Colors.black, size: 20),
              backgroundColor: Colors.white,
              centerTitle: true,
              foregroundColor: Colors.black),
          bottomNavigationBarTheme : const BottomNavigationBarThemeData(
            selectedIconTheme: IconThemeData(size : 20),
            unselectedIconTheme: IconThemeData(size : 28),
            selectedLabelStyle: TextStyle(fontSize:14, ),
            unselectedLabelStyle: TextStyle(fontSize:11),

            showUnselectedLabels : false,
          ),
          textTheme: TextTheme(

          ),
        iconTheme: IconThemeData(
          size: 15,
          color: Colors.grey,
        )

      ),
      home: MainScreen(),
    );
  }

}


