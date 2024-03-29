import 'package:flutter/material.dart';
import 'package:listview/sharedpref.dart';
import 'package:listview/tweenanimation.dart';

import '3dlist.dart';
import 'animation.dart';
import 'aniopacity.dart';
import 'crossfade.dart';
import 'heroanin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellowAccent,
        //textTheme: TextTheme(
        //displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        //  bodyMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        //),
      ),
      debugShowCheckedModeBanner: false,
      home: Shrepref(),
    );
  }
}

//singular format  - ex - colors - []
//  plural format - ex - color()
