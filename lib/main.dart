import 'package:flutter/material.dart';
import 'package:untitled/view/main_screen.dart';

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
          appBarTheme: const AppBarTheme(
              actionsIconTheme: IconThemeData(color: Colors.black, size: 20),
              backgroundColor: Colors.white,
              centerTitle: true,
              foregroundColor: Colors.black),

      ),
      home: MainScreen(),
    );
  }
}
