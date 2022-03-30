import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../model/book_list.dart';
import '../model/library_item.dart';

class LibraryItems extends StatelessWidget {
  final LibraryItem item;

  LibraryItems({Key? key, required this.item}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(0.0),
        ),
      ),
      elevation: 3,
      child: InkWell(
        autofocus: true,
        onTap: () {
          print(item.title);
        },

        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Icon(
              item.icon,
              color: item.color,
              size : 50
            ),
            SizedBox(height: 10.0),
            Flexible(
              child: Text(item.title),
            ),
          ],
        ),
      ),
    );
  }
}
