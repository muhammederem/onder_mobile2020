class Menu{
   String _name,_link;
   bool _subMenu;
   int _order,_tabID;
   
   Menu.only();
   Menu(
     this._name, this._link, this._subMenu, this._order, this._tabID);

  


   String get name => _name;
   String get link => _link;
   bool get subMenu => _subMenu;
   int get order => _order;
   int get tabID => _tabID;

   
 set name(String val) {
    _name = val;
  }
  set link(String val) {
    _link = val;
  }

  set subMenu(bool val) {
    _subMenu = val;
  }

  set order(int val) {
    _order = val;
  }

  set tabId(int val) {
    _tabID = val;
  }


   Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = _name;
    map["link"] = _link;
    map["subMenu"] = _subMenu;
    map["order"] = _order;
    map["tabID"] = _tabID;

    

    return map;
  }

  Menu.fromObject(dynamic o) {
    this._name = o["name"];
    this._link = o["link"];
    this._subMenu = o["subMenu"];
    this._order = o["order"];
    this._tabID = o["tabID"];
  }
 

}