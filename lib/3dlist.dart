import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wheellist extends StatefulWidget {
  const Wheellist({super.key});

  @override
  State<Wheellist> createState() {
    // TODO: implement createState
    return _Wheellist();
  }
}

class _Wheellist extends State<Wheellist> {

  var arrindex = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("3D list"),
      ),
      body: ListWheelScrollView(
          itemExtent: 200,
          children: arrindex.map((value) =>
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Center(child: Text("${value}",style: TextStyle(color: Colors.white, fontSize: 21,fontWeight: FontWeight.bold),)),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              ),).toList()),
    );
  }
}