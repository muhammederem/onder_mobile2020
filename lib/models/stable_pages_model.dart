import 'package:sqflite/sqflite.dart';

class StablePages{
  String _name, _link, _text, _pic;

  StablePages(this._name, this._link, this._text, this._pic);
  StablePages.only();
  String get name => _name;
  String get link => _link;
  String get text => _text;
  String get pic => _pic;

  set name(String val) {
    _name = val;
  }

  set pic(String val) {
    _pic = val;
  }

  set link(String val) {
    _link = val;
  }

  set text(String val) {
    _text = val;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = _name;
    map["link"] = _link;
    map["text"] = _text;
    map["pic"] = _pic;

    return map;
  }

  StablePages.fromObject(dynamic o) {
    this._name = o["name"];
    this._link = o["link"];
    this._text = o["text"];
    this._pic = o["pic"];
  }


    
}
