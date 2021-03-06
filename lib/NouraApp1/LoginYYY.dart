import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Screen/HomePage.dart';
import 'Header.dart';

class LoginYYY extends StatefulWidget {
  @override
  _LoginYYY createState() => _LoginYYY();
}

class _LoginYYY extends State<LoginYYY> {
  String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.teal[500], Colors.teal[300], Colors.teal[400]]),

        ),

        child: Column(children: [

          Header(),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(hintText: 'Email'),
                        onChanged: (value) {
                          setState(() {
                            _email = value.trim();
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: 'Password'),
                        onChanged: (value) {
                          setState(() {
                            _password = value.trim();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: size.width * 0.7,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 20),
                          color: Colors.teal[400],
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white,fontSize: 17.0,),
                          ),
                          onPressed: () {
                            auth.signInWithEmailAndPassword(
                                    email: _email, password: _password).then((_) {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            });
                          },
                        ),
                      ),
                    )
                  ], /////////////////////////////////
                )),
          ),

          //     )),
        ]),
      ),
    );
  }
}
