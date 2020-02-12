class CommisionsModel {
  String _pic, _title, _details, _link;
  int _order,_id;

CommisionsModel.only();
  
  CommisionsModel(
      this._pic, this._title, this._details, this._link, this._order,this._id);
  String get pic => _pic;
  String get title => _title;
  String get details => _details;
  String get link => _link;
  int get order => _order;
  int get id =>_id;

 set id(int val) {
    _id = val;
  }
  set pic(String val) {
    _pic = val;
  }

  set title(String val) {
    _title = val;
  }

  set details(String val) {
    _details = val;
  }

  set link(String val) {
    _link = val;
  }

  set order(int val) {
    _order = val;
  }
   Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["pic"] = _pic;
    map["title"] = _title;
    map["details"] = _details;
    map["link"] = _link;
    map["order"] = _order;
    map["id"] = _id;

    

    return map;
  }

  CommisionsModel.fromObject(dynamic o) {
    this._pic = o["pic"];
    this._title = o["title"];
    this._details = o["details"];
    this._link = o["link"];
    this._order = o["order"];
    this._id = o["id"];
  }

}
