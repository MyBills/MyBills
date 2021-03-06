import 'package:flutter/material.dart';

import 'package:flutter/material.dart';




import 'LoginYYY.dart';
import 'RoundedButton.dart';
import 'SignUpYYY.dart';
import 'WelcomeBackground.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: size.height * 0.4), // gapping
          Text(
            "Welcome To MyBill",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.red[900]),
          ),
        SizedBox(height: size.height * 0.05), // gapping
          RoundedButton(
            text: "Login",
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context){return LoginYYY();},));},
          ),
          RoundedButton(
            text: "Sign Up",
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpYYY();},));},
          ),
      ],
    ),
        ));
  }
}

