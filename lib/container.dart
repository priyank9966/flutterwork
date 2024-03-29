
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class containerdecorationScreen extends StatefulWidget {
  const containerdecorationScreen({super.key});

  @override
  State<containerdecorationScreen> createState() => _containerdecorationScreenState();
}

class _containerdecorationScreenState extends State<containerdecorationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Expert Flutter"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellowAccent,
            borderRadius: BorderRadius.only(bottomRight:Radius.circular(30),topLeft: Radius.circular(30)) ,
            border: Border.all(
              width: 3,
              color: Colors.blue,
            ),
            boxShadow: const [
              BoxShadow(
                blurRadius: 11,
                spreadRadius: 11,
                color: Colors.orange,
              )
            ],

          ),
          height: 200,
          width: 200,

        ),
      ),
    );
  }
}
