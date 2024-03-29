import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class stackScreen extends StatefulWidget {
  const stackScreen({super.key});

  @override
  State<stackScreen> createState() => _stackScreenState();
}

class _stackScreenState extends State<stackScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Stack widgets"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),

            Positioned(
              left: 21,
              top: 21,
              bottom: 21,
              right: 21,
              child: Container(
                width: 160,
                height: 160,
                color: Colors.grey,
              ),
            ),

            Container(
              width: 120,
              height: 120,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
