import 'package:onder_mobile2020/views/pages/connectionPage.dart';

class Connection_Model{
 String _name, _adress, _email, _gsm;
 int _order;

Connection_Model(
  this._adress,this._name,this._email,this._gsm,this._order
);
  String get adress =>_adress;
  String get name =>_name;
  String get email =>_email;
  String get gsm =>_gsm;
  int get order =>_order;

  set adress(String val) {
    _adress = val;
  }

  set name(String val) {
    _name = val;
  }

  set email(String val) {
    _email = val;
  }

  set gsm(String val) {
    _gsm = val;
  }

  set order(int val) {
    _order = val;
  }

   Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["adress"] = _adress;
    map["name"] = _name;
    map["email"] = _email;
    map["gsm"] = _gsm;
    map["order"] = _order;
  

    

    return map;
  }

  Connection_Model.fromObject(dynamic o) {
    this._adress = o["adress"];
    this._name = o["name"];
    this._email = o["email"];
    this._gsm = o["gsm"];
    this._order = o["order"];
   
  }
}

