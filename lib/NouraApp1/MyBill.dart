import 'package:flutter/material.dart';

import 'WelcomeScreen.dart';



class MyBill extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'welcome screen',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.greenAccent[100],
      ),
      home: WelcomeScreen(),
    );

  }

}