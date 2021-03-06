import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(

              top: 55,
              right: 87,

              child: Image.asset('assets/money-box.png'),



              width: size.width * 0.3),
          child,

        ],
      ),
    );
  }
}
