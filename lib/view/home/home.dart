import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/book_list_item_component.dart';
import '../../icons/app_icon_icons.dart';
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
          title: Text(Constants.BTN_READING),
          actions: <Widget>[
            IconButton(
              icon: const Icon(AppIcon.trash_alt),
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
    return Container(margin: const EdgeInsets.all(0), child: ListViewBody());
  }
}

class ListViewBody extends StatefulWidget {
  const ListViewBody({
    Key? key,
  }) : super(key: key);

  @override
  _ListViewBody createState() => _ListViewBody();
}

class _ListViewBody extends State<ListViewBody> {
  List<BookItem> bookListItem = getData.dataRes(1);

  bool selectBtn1 = true;
  bool selectBtn2 = false;

  void _onItemTapped(int btn) {
    if (btn == 1) {
      setState(() {
        selectBtn1 = true;
        selectBtn2 = false;
        bookListItem = getData.dataRes(1);

      });
    } else {
      setState(() {
        selectBtn1 = false;
        selectBtn2 = true;
        bookListItem = getData.dataRes(2);

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(pinned: true, expandedHeight: 30, backgroundColor: Colors.white, actions: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: selectBtn1 ? Theme.of(context).primaryColor : Colors.white),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  print('sdfsds');
                  _onItemTapped(1);
                },
                child: Text(Constants.BTN_READING),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(selectBtn1 ? Theme.of(context).primaryColor : Colors.black54),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: selectBtn2 ? Theme.of(context).primaryColor : Colors.white),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  _onItemTapped(2);
                },
                child: Text(Constants.BTN_SAVE),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(selectBtn2 ? Theme.of(context).primaryColor : Colors.black54),
                ),
              ),
            ),
          ),
        ]),
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Container(
                child: _buildList(bookListItem),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildList(bookListItem) {
  return ListView.separated(
    primary: false,
    padding: EdgeInsets.symmetric(horizontal: 5.0),
    scrollDirection: Axis.vertical,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: bookListItem.length,

    itemBuilder: (context, index) {

      BookItem book = bookListItem[index];
      return Material(
        child: BookListItem(item: book),

      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return Divider();
    },
  );
}

class getData {

  static List<BookItem> dataRes(int btn) {
    BookItem item1 =
        BookItem('Đấu la đại lục', '1', 'Đường Gia Tam Thiếu', 'Hoàn thành', '20/10/2010', 'Ảnh DLDL', '1252');
    BookItem item2 =
        BookItem('Tuyệt Thế Đường Môn', '2', 'Đường Gia Tam Thiếu', 'Hoàn thành', '20/10/2015', 'Ảnh TTDM', '1252');
    BookItem item3 =
        BookItem('Thần Long Chi Truyện', '3', 'Đường Gia Tam Thiếu', 'Hoàn thành', '20/10/2018', 'Ảnh TLKL', '1252');
    BookItem item4 = BookItem('Lạn Kha Ký Duyên', '4', 'Vô Ảnh Sắc QUỷ', 'Hoàn thành', '20/05/2012', 'Ảnh DLDL', '852');
    BookItem item5 = BookItem('Tương Dạ', '1', 'Miêu Nị', 'Đang ra', '20/10/2019', 'Ngọc Sơn Sơn', '1252');
    BookItem item6 = BookItem('Gian Khách', '1', 'Miêu Nị', 'Hoàn thành', '20/10/2019', 'Ngọc Sơn Sơn', '352');
    BookItem item7 = BookItem('Thiên A', '1', 'Hồn Thiên', 'Đang ra', '20/10/2019', 'Ảnh 7', '124');
    BookItem item8 = BookItem('Thần Tú', '1', 'Vong Ngữ', 'Hoàn thành', '20/10/2019', 'Ngọc Tiếu', '14152');
    List<BookItem> bookListItem = [];
    if (btn == 2) {
      bookListItem.add(item1);
      bookListItem.add(item2);
      bookListItem.add(item5);
      bookListItem.add(item6);
      bookListItem.add(item3);
      bookListItem.add(item4);
    } else {
      bookListItem.add(item5);
      bookListItem.add(item6);
      bookListItem.add(item7);
      bookListItem.add(item1);
      bookListItem.add(item2);
      bookListItem.add(item8);
    }
    return bookListItem;
  }
}
