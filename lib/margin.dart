import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class marginScreen extends StatefulWidget {
  const marginScreen({super.key});

  @override
  State<marginScreen> createState() => _marginScreenState();
}

class _marginScreenState extends State<marginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("App Dashboard Name"),
      ),
      body: Container(
          color: Colors.cyan,
          margin: EdgeInsets.all(20),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hello Flutter ",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          )),
    );
  }
}
