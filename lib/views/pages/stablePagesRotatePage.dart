import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onder_mobile2020/DataAcess/DbHelper.dart';
import 'package:onder_mobile2020/models/stable_pages_model.dart';
import 'package:onder_mobile2020/views/pages/aboutUsPage.dart';

class RotatePage extends StatefulWidget {
  @override
  _RotateState createState() => _RotateState();
}

class _RotateState extends State<RotatePage> {
  DbHelper db = new DbHelper();
  List<StablePages> stablePages;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    void goStablePage(StablePages page) async {
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => AboutUsPage(page)));
    }

    if (stablePages == null) {
      stablePages = new List<StablePages>();
      getData();
    }
    return GridView.count(
      padding: EdgeInsets.only(top: 5),
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this would produce 2 rows.
      crossAxisCount: 2,
      // Generate 100 Widgets that display their index in the List
      children: List.generate(count, (position) {
        return new Card(
          color: Colors.black12,
          margin: new EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: ListTile(
            contentPadding: EdgeInsets.only(top: 60),
            onTap: () {
              goStablePage(this.stablePages[position]);
            },
            title: Text(
              this.stablePages[position].name,
              style: TextStyle(color: Colors.white, fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
          ),
        );
      }),
    );

    // ListView.builder(

    //   itemCount: count,
    //   itemBuilder: (BuildContext context,int position){
    //     return Card(
    //       color:Colors.red,
    //       elevation: null,
    //       child:ListTile(),
    //     );

    // });
  }

  void getData() {
    var database = db.initilizeDb();
    database.then((result) {
      var pagesFuture = db.getStablePagesList();
      pagesFuture.then((data) {
        List<StablePages> pages = new List<StablePages>();
        count = data.length;
        for (int i = 0; i < count; i++) {
          pages.add(StablePages.fromObject(data[i]));
        }
        setState(() {
          stablePages = pages;
          count = count;
        });
      });
    });
  }
}
