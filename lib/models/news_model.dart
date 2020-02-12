class News{
   String _title,_pic,_link,_category,_text;
  String _date,_updateDate;

  News.only();
  News(this._text,this._title, this._pic, this._link, this._category,this._date,this._updateDate);
  String get title =>_title;
  String get pic =>_pic;
  String get link =>_link;
  String get category =>_category;
  String get date =>_date;
  String get updateDate =>_updateDate;
  String get text =>_text;

  set title(String val) {
    _title = val;
  }
  set text(String val) {
    _text = val;
  }

  set pic(String val) {
    _pic = val;
  }

  set link(String val) {
    _link = val;
  }

  set cotegory(String val) {
    _category = val;
  }

  set date(String val) {
    _date = val;
  }
  set updateDate(String val) {
    _updateDate = val;
  }
   Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["title"] = _title;
    map["pic"] = _pic;
    map["link"] = _link;
    map["category"] = _category;
    map["date"] = _date;
    map["updateDate"] = _updateDate;
    map["text"]=_text;

    return map;
  }

  News.fromObject(dynamic o) {
    this._title = o["title"];
    this._pic = o["pic"];
    this._link = o["link"];
    this._category = o["category"];
    this._date = o["date"];
    this._updateDate = o["updateDate"];
    this._text = o["text"];
  }


}