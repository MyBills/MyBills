
import 'package:flutter/material.dart';

import 'TextField.dart';

class RoundedInputField extends StatelessWidget {
   final String hintText;
   final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginTextFeild(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon),
          hintText: hintText, // the grey text inside the text field
          border: InputBorder.none, // makes the grey line inside the text field disappear
        ),
      ), // text field creation
    );
  }
}
