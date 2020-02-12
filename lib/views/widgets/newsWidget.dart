import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:onder_mobile2020/DataAcess/DbHelper.dart';
import 'package:onder_mobile2020/core.dart';
import 'package:onder_mobile2020/models/news_model.dart';
import 'package:onder_mobile2020/views/pages/newsReadPage.dart';

class NewsWidget extends StatefulWidget {
  @override
  _NewsWidgetState createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  DbHelper dbHelper = new DbHelper();
  List<News> news;

  int count = 0;
  @override
  Widget build(BuildContext context) {
    void goNews(News newss) async {
      await Navigator.push(context,
          MaterialPageRoute(builder: (context) => NewsReadPage(newss)));
    }

    if (news == null) {
      news = new List<News>();
      getData();
    }

    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          String picture = news[position].pic;
          Uint8List image1;
          image1 = Base64Decoder().convert(picture);

          String realDate = returnDate(news[position].date);

          return Card(
              margin: EdgeInsets.all(10),
              color: Colors.white60,
              elevation: 25,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          height: 85,
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            news[position].title,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                  ListTile(
                    onTap: () {
                      goNews(this.news[position]);
                    },
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.memory(image1),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    children: <Widget>[
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        realDate,
                      ),
                      Spacer(
                        flex: 8,
                      ),
                      Text(
                        news[position].category.toUpperCase(),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ],
              ));
        });
  }

  void getData() {
    var database = dbHelper.initilizeDb();
    database.then((result) {
      var newsFuture = dbHelper.getAllFunction("News");
      newsFuture.then((data) {
        List<News> allNews = new List<News>();
        count = data.length;
        for (int i = 0; i < count; i++) {
          allNews.add(News.fromObject(data[i]));
        }
        setState(() {
          news = allNews;
          count = count;
        });
      });
    });
  }
}
