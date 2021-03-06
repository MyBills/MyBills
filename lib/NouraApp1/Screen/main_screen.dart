import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/NouraApp1/Screen/HomePage.dart';
import 'package:flutter_app1/NouraApp1/Screen/Profile.dart';
import 'package:flutter_app1/NouraApp1/Screen/StatPage.dart';
import 'package:flutter_app1/NouraApp1/Screen/navbar.dart';

import '../DataSearch.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int selectindex = 0;
  final screen = [StatePage(), HomePage(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("MyBills", style: TextStyle(color: Colors.teal[400])),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
      ),*/
      bottomNavigationBar: CurvedNavigationBar(
        index: selectindex,
        color: Colors.teal[400],
        backgroundColor: Colors.white70,
        height: 50,
        key: Navbarkey.getkey(),
        items: [
          Icon(Icons.bar_chart, size: 30),
          Icon(Icons.receipt_long, size: 30),
          Icon(Icons.account_circle_outlined, size: 30),
        ],
        animationDuration: Duration(
          milliseconds: 170,
        ),
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          setState(() {
            selectindex = index;
          });
        },
      ),
      body: screen[selectindex],
    );
  }
}
