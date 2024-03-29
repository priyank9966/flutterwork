import 'package:flutter/material.dart';

class Cliprreect extends StatefulWidget {
  @override
  State<Cliprreect> createState() {
    // TODO: implement createState
    return _Cliprrect();
  }
}

class _Cliprrect extends State<Cliprreect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Clipr rect"),
      ),
      body: Center(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/ab.png",
              width: 400,
              height: 200,
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
//borderRadius: BorderRadius.only(
// topRight: Radius.circular(30),
//bottomLeft: Radius.circular(50),
//borderRadius: BorderRadius.circular(10),
