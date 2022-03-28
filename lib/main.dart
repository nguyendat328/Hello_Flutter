import 'package:flutter/material.dart';
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
          primaryColor: Colors.lightBlue,
          dividerTheme: const DividerThemeData(
            space: 3,
            indent: 5,

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
            unselectedIconTheme: IconThemeData(size : 20),
            selectedLabelStyle: TextStyle(fontSize:18),
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
