import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/book_list_item_component.dart';
import '../../component/search_list_item_component.dart';
import '../../icons/app_icon_icons.dart';
import '../../model/book_list.dart';
import '../../utils/Constants.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.BTN_SEARCH),
          leading: (IconButton(
            icon: const Icon(Icons.keyboard_arrow_left, size: 30),
            onPressed: () {
              print('jsndksd');
            },
          )),
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
  List<String> listItem = getData.dataRes();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(pinned: true, expandedHeight: 20, backgroundColor: Colors.white, actions: <Widget>[
          Expanded(
            flex: 10,
            child:Padding(
              padding: EdgeInsets.all(5),
            child:TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor)),
                suffixIcon: IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.clear),
                ),
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
          ),),

        ]),
        SliverList(
            delegate: SliverChildListDelegate(<Widget>[
          Container(
            child: ListView.separated(
              primary: false,
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: listItem.length,
              itemBuilder: (context, index) {
                return Material(
                  child: SearchListItem(item: listItem[index]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          ),
        ])),
      ],
    );
  }
}

class getData {
  static List<String> dataRes() {
    List<String> data = [];
    String item1 = "Tang Thu viên số 1";
    String item2 = "Tang Thu viên số 2";
    String item3 = "Tang Thu viên số 3";
    String item4 = "Tang Thu viên số 4";
    String item5 = "Tang Thu viên số 5";
    String item6 = "Tang Thu viên số 6";
    String item7 = "Tang Thu viên số 7";
    String item8 = "Tang Thu viên số 8";
    String item9 = "Tang Thu viên số 9";
    String item10 = "Tang Thu viên số 10";
    String item11 = "Tang Thu viên số 11";
    String item12 = "Tang Thu viên số 12";
    String item13 = "Tang Thu viên số 13";
    String item14 = "Tang Thu viên số 14";
    String item15 = "Tang Thu viên số 15";

    data.addAll([
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8,
      item9,
      item10,
      item12,
      item11,
      item13,
      item15,
      item14,
    ]);
    return data;
  }
}
