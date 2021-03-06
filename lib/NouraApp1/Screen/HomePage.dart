import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/NouraApp1/BillsCardList.dart';
import 'package:image_picker/image_picker.dart';

import '../BillsCardList.dart';
import '../BillsCardList.dart';
import '../BillsCardList.dart';
import '../BillsCardList.dart';
import '../DataSearch.dart';
import 'Profile.dart';
import 'StatPage.dart';

// class CardDetail {
//   String title;
//   String subtitle;
//
//   CardDetail({this.title, this.subtitle});
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final List<CardDetail> cards = [
  //   CardDetail(title: 'bills', subtitle: 'hi'),
  // ];
  File _image;

  Future getImage(bool isCamera) async {
    File image;
    if (isCamera) {
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text("MyBills", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
          IconButton(
              icon: Icon(Icons.attach_file),
              onPressed: () {
                getImage(false);
              }),
          IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: () {
              getImage(true);
            },
          ),
          // IconButton(
          //     icon: Icon(Icons.add),
          //     onPressed: () {
          //     cards.add(
          //         CardDetail(title: 'llll', subtitle: 'mmmm'),
          //       );
          //       setState(() {});
          //     }
          //   //showSearch(context: context, delegate: DataSearch())),
          // ),
          // IconButton(
          //     icon: Icon(Icons.delete_forever_sharp),
          //     onPressed: () {
          //       cards.removeLast();
          //       setState(() {});
          //     }

          // ),
        ],
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Column(
            //   children: <Widget>[
            //     Expanded(
            //       child: ListView.builder(
            //         itemCount: cards.length,
            //         itemBuilder: (context, index) => Card(
            //           child: ListTile(
            //             title: Text(cards[index].title),
            //             subtitle: Text(cards[index].subtitle),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Text('Hello', style: TextStyle(color: Colors.teal)),
            _image == null
                ? Container()
                : Image.file(_image, height: 300.0, width: 300.0),
          ],
        ),
      ),
    );
  }
}
