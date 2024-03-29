import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class positionwidgetScreen extends StatefulWidget {
  const positionwidgetScreen({super.key});

  @override
  State<positionwidgetScreen> createState() => _positionwidgetScreen();
}

class _positionwidgetScreen extends State<positionwidgetScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // the App.build method, and use it to set our appbar title.
          title: Text('Position widgets'),
          backgroundColor: Colors.yellow,
        ),
        body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                right: 20,
                left: 20,
                bottom: 10,

                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              )
            ],
          ),
        )
    ) ;
  }
}
