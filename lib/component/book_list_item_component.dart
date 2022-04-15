//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../model/book_list.dart';
import '../utils/Router.dart';
import '../view/bookDetail/detail_main.dart';

class BookListItem extends StatelessWidget {
  final BookItem item;

  BookListItem({Key? key, required this.item}) : super(key: key);

  static final uuid = Uuid();
  final String imgTag = uuid.v4();
  final String titleTag = uuid.v4();
  final String authorTag = uuid.v4();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      autofocus: true,
      onTap: () {
        print(item.title+ item.id);
        MyRoute.pushPage(context,DetailMain());
      },
      child: Container(
        //color: Colors.white,
        height: 120,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: Container(
                  height: 120.0,
                  width: 84.0,
                  child:  Image(
                      image: NetworkImage(item.img),
                      fit: BoxFit.cover,
                      errorBuilder:  (BuildContext context, Object exception, StackTrace? stackTrace) {
                        return Image.asset('assets/images/default.jpg', fit: BoxFit.cover,);
                      }
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(item.title, style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 15)),
                  ),
                  SizedBox(height: 5),
                  Text("Tác giả: " + item.author, style: const TextStyle(fontSize: 10)),
                  SizedBox(height: 5),
                  Text("Trạng thái: " + item.status, style: const TextStyle(fontSize: 10)),
                  SizedBox(height: 5),
                  Text("Số chương: " + item.totalChap, style: const TextStyle(fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
