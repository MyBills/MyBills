
import 'package:flutter/material.dart';

import 'TextField.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LoginTextFeild(


      child: TextField(

        obscureText: true, // hide the text of the password
        onChanged: onChanged,
        decoration: InputDecoration(

          hintText: "Password",
          icon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.visibility),
          border: InputBorder.none,

        ),

      ),
    );
  }
}
