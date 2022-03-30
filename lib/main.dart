import 'package:flutter/material.dart';
import 'package:untitled/view/bookFilter/book_main.dart';
import 'package:untitled/view/search/search_main.dart';
import '../view/main_screen.dart';

void main() {
  runApp(const MyApp());
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
      home: SearchMain(),
    );
  }
}
