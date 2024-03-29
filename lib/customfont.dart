import 'package:flutter/material.dart';

class customfontScreen extends StatefulWidget {
  const customfontScreen({super.key});

  @override
  State<customfontScreen> createState() => _customfontScreenState();
}

class _customfontScreenState extends State<customfontScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text('Custom text')),
      body: const Center(
        child: Text(
          "Custom Text",
          style: TextStyle(
              color: Colors.yellowAccent,
              fontSize: 50,
              fontFamily: 'fontmain',
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
