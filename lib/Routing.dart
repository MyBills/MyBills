import 'package:flutter/material.dart';

import 'NoteScreen.dart';
import 'NotesScreen.dart';

class Routing extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NotesScreen.routeName,
//      routes: {
//        NotesScreen.routeName: (context) => NotesScreen(),
//        NoteScreen.routeName: (context) => NoteScreen()
//      },
      onGenerateRoute: (RouteSettings settings) {
        var routes = <String, WidgetBuilder>{
          NotesScreen.routeName: (context) => NotesScreen(),
          NoteScreen.routeName: (context) => NoteScreen(settings.arguments)
        };
        WidgetBuilder builder = routes[settings.name];
        return MaterialPageRoute(builder: (ctx) => builder(ctx));
      },
    );
  }
}