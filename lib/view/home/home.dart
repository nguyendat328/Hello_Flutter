import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/book_list_item.dart';
import '../../icons/hello_fluter_icons.dart';
import '../../model/book_list.dart';
import '../../utils/Constants.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.reading),
          actions: <Widget>[
            IconButton(
              icon: const Icon(HelloFluter.trash_alt),
              onPressed: () {
                print('jsndksd');
              },
            ),
          ],
        ),
        body: Body());
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(0),
        child: CustomScrollView(slivers: <Widget>[
          SliverAppBar(pinned: true, expandedHeight: 30, backgroundColor: Colors.white, actions: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Theme.of(context).primaryColor),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(Constants.reading),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Theme.of(context).primaryColor),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(Constants.save),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                  ),
                ),
              ),
            ),
          ]),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                child: MyListView(context),
              )
            ]),
          ),
        ]));
  }
}

Widget MyListView(BuildContext context) {
  final europeanCountries = [
    'Albania',
    'Andorra',
    'Armenia'
        'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'France',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
  ];
  List<BookItem> bookListItem = [];
  BookItem item1 = BookItem('Đấu la đại lục', '1', 'Đường Gia Tam Thiếu', 'Hoàn thành', '20/10/2010', 'Ảnh DLDL','1252');
  BookItem item2 = BookItem('Tuyệt Thế Đường Môn', '2', 'Đường Gia Tam Thiếu', 'Hoàn thành', '20/10/2015', 'Ảnh TTDM','1252');
  BookItem item3 = BookItem('Thần Long Chi Truyện', '3', 'Đường Gia Tam Thiếu', 'Hoàn thành', '20/10/2018', 'Ảnh TLKL','1252');
  BookItem item4 = BookItem('Lạn Kha Ký Duyên', '4', 'Vô Ảnh Sắc QUỷ', 'Hoàn thành', '20/05/2012', 'Ảnh DLDL','852');
  BookItem item5 = BookItem('Tương Dạ', '1', 'Miêu Nị', 'Đang ra', '20/10/2019', 'Ngọc Sơn Sơn','1252');
  BookItem item6 = BookItem('Gian Khách', '1', 'Miêu Nị', 'Hoàn thành', '20/10/2019', 'Ngọc Sơn Sơn','352');
  BookItem item7 = BookItem('Thiên A', '1', 'Hồn Thiên', 'Đang ra', '20/10/2019', 'Ảnh 7','124');
  BookItem item8 = BookItem('Thần Tú', '1', 'Vong Ngữ', 'Hoàn thành', '20/10/2019', 'Ngọc Tiếu','14152');
  bookListItem.add(item1);
  bookListItem.add(item2);
  bookListItem.add(item3);
  bookListItem.add(item4);
  bookListItem.add(item5);
  bookListItem.add(item6);
  bookListItem.add(item7);
  bookListItem.add(item8);

  return ListView.separated(
    primary: false,
    padding: EdgeInsets.symmetric(horizontal: 5.0),
    scrollDirection: Axis.vertical,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: bookListItem.length,
    itemBuilder: (context, index) {
      BookItem book = bookListItem[index];
      return Container(
        child: BookListItem(item: book),
      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return Divider();
    },
  );
}
