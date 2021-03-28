import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'NoteScreen.dart';
import 'NoteStream.dart';


class NotesScreen extends StatefulWidget {
  static final String routeName = '/';

  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text("Bills", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {

              }),
        ],
      ),
      body: ListView(
        children: <Widget>[NotesStream(firestore: _firestore)],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, NoteScreen.routeName);
        },
        backgroundColor: Colors.limeAccent,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(

        color: Colors.teal[400],
        backgroundColor: Colors.white70,
        height: 50,

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

          });
        },
      ),

    );
  }

  }
