import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class dateScreen extends StatefulWidget {
  const dateScreen({super.key});

  @override
  State<dateScreen> createState() => _dateScreenState();
}

class _dateScreenState extends State<dateScreen> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text("Date and Time getting"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Column(
            children: [
              Text(
              //  'Current Time : ${DateFormat('yMMMMEEEEd').format(time)}',
                'Current Time : ${DateFormat('jms').format(time)}',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Current Time'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
