import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Herodetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Hero anim details"),
      ),
      body: Hero(
        tag: "itbg",
        child: Image.asset("assets/images/ab.png", width: 400, height: 400),
      ),
    );
  }
}
