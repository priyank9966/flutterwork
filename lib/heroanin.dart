import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview/herodetails.dart';

class Heropage extends StatefulWidget {
  const Heropage({super.key});

  @override
  State<Heropage> createState() {
    // TODO: implement createState
    return _Heropage();
  }
}

class _Heropage extends State<Heropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Hero anim"),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Herodetails();
                  },
                ),
              );
            },
            child: Hero(
              tag: "itbg",
              child: Image.asset(
                "assets/images/ab.png",
                width: 200,
                height: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
