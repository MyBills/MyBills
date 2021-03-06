import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const HaveAccount({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login? 'Dont have an account? ' : 'Already have an account? ',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 17,

          ),

        ),
        GestureDetector( // makes the sign up clickable
          onTap: press,
          child: Text(
            login? 'Sign Up' : 'Sign in',
            style: TextStyle(
              color: Colors.teal[400],
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}