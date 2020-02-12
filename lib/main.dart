
import 'package:flutter/material.dart';
import 'package:onder_mobile2020/views/pages/connectionPage.dart';
import 'package:onder_mobile2020/views/pages/homePage.dart';
import 'package:onder_mobile2020/views/pages/loaderPage.dart';


void main() => runApp(
     
         MaterialApp(
          home: LoaderView(),
          theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.redAccent),
          routes: route,
          debugShowCheckedModeBanner: false,
        ));
    

    
    var route = <String, WidgetBuilder>{
      "/homepage": (BuildContext context) => HomePage(),
      "/connection": (BuildContext context) => Connection(),
      
    };
    