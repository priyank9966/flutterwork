import 'package:flutter/material.dart';
import 'package:listview/ui_helper/utils.dart';

class styleScreen extends StatefulWidget {
  const styleScreen({super.key});

  @override
  State<styleScreen> createState() => _styleScreenState();
}

class _styleScreenState extends State<styleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        children: [
          Text(
            "Hello flutter master text 111",
            style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.green),
          ),
          Text(
            'Hello flutter master text 2',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.blueAccent),
          ),
          Text(
            "Hello flutter master text 3",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "Hello flutter master text 4",
            style:  mTextStyle5(),),
          Text(
            "Hello flutter master text 4",
            style:  mTextStyle(),),

        ],
      ),
    );
  }
}
