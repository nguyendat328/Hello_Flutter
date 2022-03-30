import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../model/book_list.dart';

class SearchListItem extends StatelessWidget {
  final String item;

  SearchListItem({Key? key, required this.item}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return InkWell(
      autofocus: true,
      onTap: () {
        print(item);
      },
      child: Container(
        //color: Colors.white,
        height: 60,
        child: Text(item),
      ),
    );
  }
}
