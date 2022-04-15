import 'dart:async';
import 'dart:collection';
import 'package:hive/hive.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../model/book.dart';
import 'Constants.dart';


class HiveDatabase {
  static void innitHive() async {
    try {
      await Hive.initFlutter();
      await Hive.openBox<book_hive>(Constants.BOOK_HIVE);
    } catch (e) {
      print(e);
    }
  }

  static Future<void> insertBook(book_hive book) async {
    try {
      var box = Hive.box<book_hive>(Constants.BOOK_HIVE);
      box.put(book.id, book);
      box.close();
    } catch (e) {
      print(e);
    }
  }

  static Future<void> deleteBook(int id) async {
    try {
      var box = Hive.box<book_hive>(Constants.BOOK_HIVE);
      box.delete(id);
      box.close();
    } catch (e) {
      print(e);
    }
  }

  static List<book_hive> getAllBook() {
    List<book_hive> books = new List.empty() ;
    try {
      var box = Hive.box<book_hive>(Constants.BOOK_HIVE);
      books = box.values.toList();
    } catch (e) {
      print(e);
    }
    return books;
  }

  static book_hive? getBookById(int id) {
    try {
      var box = Hive.box<book_hive>(Constants.BOOK_HIVE);
      book_hive? book = box.get(id);
      return book;
    } catch (e) {
      print(e);
    }
  }
}
