import 'dart:async';

import 'package:flutter/material.dart';
import 'package:listview/BMI.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() {
    // TODO: implement createState
    return _splashScreen();
  }
}

class _splashScreen extends State<splashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return bmical();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Sita Ram",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

//splash mainly use data loading of the all app
