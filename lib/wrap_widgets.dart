import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wrapwidgetScreen extends StatefulWidget {
  const wrapwidgetScreen({super.key});

  @override
  State<wrapwidgetScreen> createState() => _wrapwidgetScreenState();
}

class _wrapwidgetScreenState extends State<wrapwidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Wrap Widgets"),
       ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.horizontal, //vertical etle column
          spacing: 11,
          runSpacing: 11,
          alignment: WrapAlignment.spaceEvenly,
          children: [

            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
