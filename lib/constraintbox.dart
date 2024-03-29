import 'package:flutter/material.dart';

class constraintboxScreen extends StatefulWidget {
  const constraintboxScreen({super.key});

  @override
  State<constraintboxScreen> createState() => _constraintboxScreenState();
}

class _constraintboxScreenState extends State<constraintboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget box"),
        backgroundColor: Colors.yellow,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 200,
          minWidth: 200,
          maxHeight: 200,
          minHeight: 200
        ),
          child: ElevatedButton(
            onPressed: (){

            },
            child: Text("click now"),
          ),
        ),
    );
  }
}
