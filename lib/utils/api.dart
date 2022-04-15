import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:html/parser.dart' as htmlparser;
import 'package:html/dom.dart';
import 'package:intl/intl.dart';

import '../model/book.dart';

class GetData {
  static final DateFormat formatter = DateFormat('dd/MM/yyyy');

  static Future<Book?> getBook(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      final document = htmlparser.parse(response.body);

      String jsonInfor = document.querySelectorAll('script')[0].text;
      String intro =
          document.getElementsByClassName('book-intro')[0].text.replaceAll('\n', '').replaceAll(RegExp('  +'), ' ');
      Map eventMap = jsonDecode(jsonInfor);
      String author = eventMap['author']['name'];
      String title = eventMap['headline'];
      String imageUrl = eventMap['image']['url'];
      String datePublished = formatter.format(DateTime.parse(eventMap['datePublished']));
      double aggregateRating = eventMap['aggregateRating']['ratingValue'] as double;
      String? id = document.getElementById("story_id_hidden")?.attributes['value'];

      Book book = Book(
        id: int.parse(id!),
        title: title,
        author: author,
        isSaved: 0,
        isRead: 0,
        datePublished: datePublished,
        aggregateRating: aggregateRating,
        onReadChap: 0,
        imageUrl: imageUrl,
        intro: intro,
      );
      return book;
    } catch (e) {
      print(e);
    }
    return null;
  }

  static Future<String?> getBookIntro(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      final document = htmlparser.parse(response.body);

      String intro =
          document.getElementsByClassName('book-intro')[0].text.replaceAll('\n', '').replaceAll(RegExp('  +'), ' ');

      return intro;
    } catch (e) {
      print(e);
    }
    return null;
  }

  static Future<List<BookChapter>> getBookChapter(int? bookId) async {
    List<BookChapter> listChap = [];

    try {
      String url = "https://truyen.tangthuvien.vn/story/chapters?story_id=" + bookId.toString();
      final response = await http.get(Uri.parse(url));
      final document = htmlparser.parse(response.body);

      var chapterInfor = document.querySelectorAll('a');
      for (int i = 0; i < chapterInfor.length; i++) {
        BookChapter chap = BookChapter(i + 1, chapterInfor[i].attributes['title'], chapterInfor[1].attributes['href']);
        listChap.add(chap);
      }
    } catch (e) {
      print(e);
    }
    return listChap;
  }
}
