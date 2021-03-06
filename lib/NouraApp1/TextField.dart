
import 'package:flutter/material.dart';

class LoginTextFeild extends StatelessWidget {
  final Widget child;

  const LoginTextFeild({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(

      margin: EdgeInsets.symmetric(
          vertical: 15), // space between the (login text) and  (Textfield)
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: size.width * 0.7, // size of the text field
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      child: child,
    );
  }
}
