import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/book_list_item_component.dart';
import '../../icons/app_icon_icons.dart';
import '../../model/book_list.dart';
import '../../utils/Constants.dart';

class BookDetail extends StatefulWidget {
  // final int id;
  // final bool isNew;
  //
  // BookDetail({Key? key,required this.id, required this.isNew}) ;

  @override
  _BookDetail createState() => _BookDetail();
}

class _BookDetail extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Đấu la đại lục"),
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
    return ListView(
      physics: ClampingScrollPhysics(),
      children: <Widget>[
       Container(
          //color: Colors.white,
          height: 200,
          padding: EdgeInsets.only(top:5),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                elevation: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: Container(
                    height: 180.0,
                    width: 120.0,
                    child: Text('ddddd'),
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
                      child: Text('Đấu La Đại Lục', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20)),
                    ),
                    SizedBox(height: 5),
                    Text("Đường gia tam thiếu " , style: const TextStyle(fontSize: 13)),
                    SizedBox(height: 5),
                    Text("Hoàn thành " , style: const TextStyle(fontSize: 13)),
                    SizedBox(height: 5),
                    Text("1250 Chương: " , style: const TextStyle(fontSize: 13)),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height:40,
          color: Colors.white,
          child: Text('Danh sách chương'),
        ),
        SizedBox(height: 20.0),
              Container(
                color: Colors.white,
                child:Text('  I have worked witworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mworked with JUnit and Mocks but Im wondering, what are the differences between Mh JUnit and Mocks but Im wondering, what are the differences between Mocks and Stubs in JUnit and how to use Stubs in JUnit, Java? And as Mocks that have EasyMock, Mockito and so on, what does Stubs uses in Java?'),
              ),



      ],
    );
  }
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
