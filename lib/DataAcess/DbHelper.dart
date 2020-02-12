

import 'package:onder_mobile2020/models/news_model.dart';
import 'package:onder_mobile2020/models/stable_pages_model.dart';
import 'package:onder_mobile2020/models/swiper_model.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
class DbHelper {
  String tblCommisions = "Commissions";
  String tblConnection = "Connection";
  String tblMenu = "Menu";
  String tblNews = "News";
  String tblStablePages = "StablePages";
  String tblSwiper = "Swiper";

  String colText = "text";

  String colCategory = "category";
  String colDate = "date";
  String colUpdateDate = "updateDate";

  String colSubMenu = "subMenu";
  String colTabID = "tabID";

  String colName = "name";
  String colAdress = "adress";
  String colEmail = "email";
  String colGsm = "gsm";

  String colPic = "pic";
  String colTitle = "title";
  String colDetails = "details";
  String colLink = "link";
  String colOrder = "orrder"; /////////ORDER///////////
  String colId = "id";

  static final DbHelper _dbHelper = DbHelper._internal();


  DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }

  static Database _db;
  Future<Database> initilizeDb() async {

    

    var dbOnder = await openDatabase("lib/DataAcess/onder.db", version: 1, onCreate: _createDb);
    return dbOnder;
  }

  Future<Database> get db async {
    if (_db == null) {
       
      _db = await initilizeDb();


    }
    
    return _db;
  }

  void _createDb(Database db, int version) async {
    await db.execute("Create table $tblCommisions( $colId integer primary key, "+
      "$colPic text," +
        "$colTitle text, " +
        "$colDetails text, " +
        "$colLink text, " +
        "$colOrder integer)");

    await db.execute("Create table $tblConnection($colName text," +
        "$colAdress text, " +
        "$colEmail text, " +
        "$colGsm text, " +
        "$colOrder integer primary key)");

    await db.execute("Create table $tblMenu($colName text," +
        "$colLink text," +
        "$colSubMenu integer, " +
        "$colOrder integer, " +
        "$colTabID intger)");

    await db.execute("Create table $tblNews($colTitle text," +
        "$colText text"+
        "$colPic text, " +
        "$colLink text, " +
        "$colCategory text, " +
        "$colDate text, " +
        "$colUpdateDate text )");

    await db.execute("Create table $tblStablePages($colName text, " +
        "$colLink text primary key, " +
        "$colText text, " +
        "$colPic text ) ");

    await db.execute("Create table $tblSwiper($colPic text," +
        "$colTitle text, " +
        "$colLink text)");

        await db.execute("Create table Announcement(title text, link text primary key,text text, pic text, date text)");
  }
    
//////////////////////////////////////////////////////////////
  //////////////////////STABLE PAGES///////////////////////
  /////////////////////////////////////////////////////////


  Future<int> insertStable(StablePages stable) async {
    Database db = await this.db;
    var result = await db.insert(tblStablePages, stable.toMap());
    return result;
  }

  Future<int> updateStable(StablePages stable) async {
    Database db = await this.db;
    var result = db.update(tblStablePages, stable.toMap(),
        where: "$colLink=?", whereArgs: [stable.link]);
    return result;
  }

  Future<int> deleteStable(String link) async {
    Database db = await this.db;
    var result =
        db.rawDelete("delete from $tblStablePages where $colLink = $link");
    return result;
  }

  Future<List> getStable(String link) async {
    Database db = await this.db;
    var result = await db
        .rawQuery("select * from $tblStablePages where link = '/tarihce'");
    return result;
  }

   Future<List> getStablePagesList() async {
    Database db = await this.db;
    var result = await db
        .rawQuery("select * from $tblStablePages");
    return result;
  }
//////////////////////////////////////////////////////////////
  //////////////////////STABLE PAGES///////////////////////
  /////////////////////////////////////////////////////////
  

  //////////////////////////////////////////////////////////////
  //////////////////////    SWİPER   ///////////////////////
  /////////////////////////////////////////////////////////
    Future<int> insertSwiper(SwiperModel swiper) async {
    Database db = await this.db;
    var result = await db.insert(tblSwiper, swiper.toMap());
    return result;
  }
    Future<int> updateSwiper(SwiperModel swiper) async {
    Database db = await this.db;
    var result = db.update(tblSwiper, swiper.toMap(),
        where: "$colLink=?", whereArgs: [swiper.link]);
    return result;
  }
 

  //////////////////////////////////////////////////////////////
  //////////////////////    SWİPER   ///////////////////////
  /////////////////////////////////////////////////////////


  //////////////////////////////////////////////////////////////
  //////////////////////    functions   ///////////////////////
  /////////////////////////////////////////////////////////
  ///
  Future<List> getFunction(String tblName, String link)async{
    Database db= await this.db;
    var result= await db.rawQuery("select *from $colName where link=$link");
    return result;
  }
   Future<List> getAllFunction(String tblName)async{
    Database db= await this.db;
    var result= await db.rawQuery("select *from $tblName");
    return result;
  }
  Future<List> getFromNewsTable(String category)async{
    Database db=await this.db;
    var result=await db.rawQuery("select * from News where categroy=$category order by $colDate asc");
  }
  Future<int> deleteFunction(String tblName,String link) async {
    Database db = await this.db;
    var result =
        db.rawDelete("delete from $tblName where $colLink = $link");
    return result;
  }
  Future<int>deleteAll(String tblName) async{
    Database db=await this.db;
    var result=await db.rawDelete("delete from $tblName");
    return result;
  }
    //////////////////////////////////////////////////////////////
  //////////////////////    functions   ///////////////////////
  /////////////////////////////////////////////////////////
    Future<int> insertNews(News news) async {
    Database db = await this.db;
    
    var result = await db.insert(tblNews, news.toMap());
    return result;
  }
    Future<int> updateNews(News news) async {
    Database db = await this.db;
    var result = db.update(tblNews, news.toMap(),
        where: "$colLink=?", whereArgs: [news.link]);
    return result;
  }
}

