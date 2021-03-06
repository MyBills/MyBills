import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDetail {
  String title;
  String subtitle;

  CardDetail({this.title, this.subtitle});
}

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<CardDetail> cards = [
    CardDetail(title: 'bills', subtitle: 'hi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text(
          'MyBills',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                cards.add(
                  CardDetail(title:'llll', subtitle: 'mmmm'),
                );
                setState(() {});
              }
              //showSearch(context: context, delegate: DataSearch())),
              ),

          // SizedBox(
          //   width: 20.0,
          // ),
          IconButton(
              icon: Icon(Icons.delete_forever_sharp),
              onPressed: () {
                cards.removeLast();
                setState(() {});
              }
              //showSearch(context: context, delegate: DataSearch())),
              ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(cards[index].title),
                  subtitle: Text(cards[index].subtitle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
