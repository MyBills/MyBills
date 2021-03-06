// import 'package:flutter/material.dart';
// import 'package:flutter_app1/NouraApp1/Screen/main_screen.dart';
//
// import 'BillsCardList.dart';
// import 'Button.dart';
// import 'InputField.dart';
// import 'RoundedButton.dart';
//
// class InputWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(30),
//       child: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 40,
//           ),
//           Container(
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(10)),
//             child: InputField(),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           Text(
//             "Forgot Password?",
//             style: TextStyle(color: Colors.grey),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           //Button()
//           RoundedButton(
//             text: 'Login',
//             press: () {
//               Navigator.push(context, MaterialPageRoute(
//                 builder: (context) {
//                   return mainScreen();
//                 },
//               ));
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }