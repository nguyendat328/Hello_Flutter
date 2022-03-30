import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/book_list_item_component.dart';
import '../../component/library_item_component.dart';
import '../../icons/app_icon_icons.dart';
import '../../model/book_list.dart';
import '../../model/library_item.dart';
import '../../utils/Constants.dart';

class Library extends StatefulWidget {
  @override
  _Library createState() => _Library();
}

class _Library extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.BTN_LIBRARY),
          actions: <Widget>[
            IconButton(
              icon: const Icon(AppIcon.search),
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
  List<LibraryItem> listItem =getData.dataRes();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

        crossAxisCount: 3,
          mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0
      ),
      itemCount: listItem.length,
    itemBuilder: (context, index) {
      LibraryItem item = listItem[index];
      return Material(
        child: LibraryItems(item: item),
      );
    },
    );
  }
}


class getData {
  static List<LibraryItem> dataRes() {
    List<LibraryItem> data = [];
    LibraryItem item1 = LibraryItem(Constants.NEW_BOOK,Constants.ID_NEW_BOOK,AppIcon.book_open,Colors.green);
    LibraryItem item2 = LibraryItem(Constants.VIEW_BOOK,Constants.ID_VIEW_BOOK,AppIcon.medal,Colors.deepOrange);
    LibraryItem item3 = LibraryItem(Constants.FULL_BOOK,Constants.ID_FULL_BOOK,AppIcon.scroll_unfurled,Colors.teal);
    LibraryItem item4 = LibraryItem(Constants.TIEN_HIEP,Constants.ID_TIEN_HIEP,AppIcon.sheriff,Colors.indigoAccent);
    LibraryItem item5 = LibraryItem(Constants.HUYEN_HUYEN,Constants.ID_HUYEN_HUYEN,AppIcon.bat_sword,Colors.deepPurple);
    LibraryItem item6 = LibraryItem(Constants.KHOA_HUYEN,Constants.ID_KHOA_HUYEN,AppIcon.crossed_pistols,Colors.blue);
    LibraryItem item7 = LibraryItem(Constants.KY_HUYEN,Constants.ID_KY_HUYEN,AppIcon.wyvern,Colors.indigo);
    LibraryItem item8 = LibraryItem(Constants.DO_THI,Constants.ID_DO_THI,AppIcon.city,Colors.pink);
    LibraryItem item9 = LibraryItem(Constants.LICH_SU,Constants.ID_LICH_SU,AppIcon.clockwork,Colors.brown);
    LibraryItem item10 = LibraryItem(Constants.VO_THUAT,Constants.ID_VO_THUAT,AppIcon.axe_swing,Colors.blueAccent);
    LibraryItem item11 = LibraryItem(Constants.DONG_NHAN,Constants.ID_DONG_NHAN,AppIcon.cracked_helm,Colors.lightGreen);
    LibraryItem item12 = LibraryItem(Constants.QUAN_SU,Constants.ID_QUAN_SU,AppIcon.regeneration,Colors.teal);
    LibraryItem item13 = LibraryItem(Constants.VONG_DU,Constants.ID_VONG_DU,AppIcon.bleeding_eye,Colors.pinkAccent);
    LibraryItem item14 = LibraryItem(Constants.NGON_TINH,Constants.ID_NGON_TINH,AppIcon.heartbeat,Colors.pink);
    LibraryItem item15 = LibraryItem(Constants.HUYEN_AO,Constants.ID_HUYEN_AO,AppIcon.cat,Colors.black);
    data.addAll([item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item12,item11,item13,item15,item14,]);
    return data;
  }
}
