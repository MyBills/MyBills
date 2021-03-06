import 'package:flutter/material.dart';

// class InputField extends StatefulWidget{
//
//
//   @override
//   _InputField createState() => _InputField() ;
//
//
//
// }
class InputField extends StatelessWidget {



  final ValueChanged<String> onChanged;
  const InputField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200]))),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
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
        ),
      ],
    );
  }
}