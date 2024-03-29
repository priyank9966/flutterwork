import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customtwoScreen extends StatefulWidget {
  const customtwoScreen({super.key});

  @override
  State<customtwoScreen> createState() => _customtwoScreenState();
}

class _customtwoScreenState extends State<customtwoScreen> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){

    },
        child: Text("Click"),
    );
  }
}
