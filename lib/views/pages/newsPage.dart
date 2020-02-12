import 'package:flutter/material.dart';
import 'package:onder_mobile2020/DataAcess/DbHelper.dart';
import 'package:onder_mobile2020/models/news_model.dart';
import 'package:onder_mobile2020/views/widgets/newsWidget.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      
      
      child: NewsWidget(),
    );
  }
}