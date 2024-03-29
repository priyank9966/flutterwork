import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mapinglistScreen extends StatefulWidget {
  const mapinglistScreen({super.key});

  @override
  State<mapinglistScreen> createState() {
    // TODO: implement createState
    return _mapinglistScreeen();
  }
}

class _mapinglistScreeen extends State<mapinglistScreen> {

  var arrData = [
    "Ram",
    "Krishna",
    "Hari",
    "Om",
    "Om namah sivay",
    "Radhe radhe",
    "Sitaram",
    "Sitaaarammm",
    "Hare krishna",
    "Hare Ram HareRam",
    "Krishna",
    "Hari",
    "Om",
    "Om namah sivay",
    "Radhe radhe",
    "Sitaram",
    "Sitaaarammm",
    "Hare krishna",
    "Hare Ram Hare ram"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maping list"),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(value)),
                ),
              ),
            );
          }).toList(), // it is complsury
        ),
      ),
    );
  }
}