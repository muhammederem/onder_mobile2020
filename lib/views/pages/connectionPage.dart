import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Connection extends StatefulWidget {
  @override
  _ConnectionState createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.maxFinite,
      child: Image.asset("assets/harita.png"),
    );
  }
}

