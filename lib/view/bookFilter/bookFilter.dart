import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/book_list_item_component.dart';
import '../../icons/app_icon_icons.dart';
import '../../model/book_list.dart';
import '../../utils/Constants.dart';

class BookFilter extends StatefulWidget {
  @override
  _BookFilter createState() => _BookFilter();
}

class _BookFilter extends State<BookFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.TIEN_HIEP),
          leading: (
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_left, size : 30),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
          ),


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



  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[

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
