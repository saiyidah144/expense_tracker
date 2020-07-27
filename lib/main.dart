import 'package:flutter/material.dart';
import 'home_widget.dart';
import 'loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : "EXPTRACKER",
      theme : ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: LoginPage(),
      routes: {
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => Home(),
      },

    );
  }
}
