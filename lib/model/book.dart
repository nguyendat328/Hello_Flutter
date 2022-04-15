import 'package:hive/hive.dart';
part 'book.g.dart';

class Book {
  final int? id;
  final String? title;
  final String? author;
  int? isSaved = 0;
  int? isRead = 0;
  final int? onReadChap;
  final String? datePublished;
  final double? aggregateRating;
  final String? imageUrl;
  final String? intro;


  Book(
      {required this.id,
      required this.title,
      required this.author,
      this.isSaved,
      this.isRead,
      this.onReadChap,
      this.datePublished,
      this.aggregateRating,
      this.imageUrl,
        this.intro,
      });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'isSaved': isSaved,
      'isRead': isRead,
      'onReadChap': onReadChap,
      'datePublished': datePublished,
      'aggregateRating': aggregateRating,
      'imageUrl': imageUrl,
      'intro': intro,
    };
  }

  @override
  String toString() {
    return 'Book{id: $id, title: $title, author: $author, isSaved: $isSaved, isRead: $isRead, onReadChap: $onReadChap, datePublished: $datePublished, aggregateRating: $aggregateRating, imageUrl:$imageUrl}';
  }
}
@HiveType(typeId: 1)
class BookChapter  extends HiveObject {
  @HiveField(0)
  int? chapter;

  @HiveField(1)
  String? title;

  @HiveField(2)
  String? url;

  BookChapter(
    this.chapter,
    this.title,
    this.url,
  );

  @override
  String toString() {
    return 'BookChapter{chapter: $chapter, title: $title, url: $url}';
  }
}

@HiveType(typeId: 0)
class book_hive extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? title;

  @HiveField(2)
  String? author;

  @HiveField(3)
  int? isSaved;

  @HiveField(4)
  int? isRead;

  @HiveField(5)
  int? onReadChap;

  @HiveField(6)
  String? datePublished;

  @HiveField(7)
  double? aggregateRating;

  @HiveField(8)
  String? imageUrl;

  @HiveField(9)
  String? intro;

  @HiveField(10)
  List<BookChapter>? listChap;

  book_hive(this.id, this.title, this.author, this.isSaved, this.isRead, this.onReadChap, this.datePublished,
      this.aggregateRating, this.imageUrl, this.intro, this.listChap);
}

