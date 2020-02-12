class SwiperModel{
  String _pic, _title, _link;

  SwiperModel(this._pic, this._title, this._link);
  SwiperModel.only();

  String get title =>_title;
  String get pic =>_pic;
  String get link =>_link;

  
  set title(String val) {
    _title = val;
  }

  set pic(String val) {
    _pic = val;
  }

  set link(String val) {
    _link = val;
  }
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["pic"] = _pic;
    map["title"] = _title;
    map["link"] = _link;
  

    return map;
  }

  SwiperModel.fromObject(dynamic o) {
    this._title = o["title"];
    this._link = o["link"];
    this._pic = o["pic"];
  }

  

}

