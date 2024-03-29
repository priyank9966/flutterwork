import 'package:flutter/material.dart';

class setstateScreen extends StatefulWidget {
  const setstateScreen({super.key});

  @override
  State<setstateScreen> createState() => _setstateScreen();
}

class _setstateScreen extends State<setstateScreen> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // the App.build method, and use it to set our appbar title.
        title: Text('Counter app'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count : $count",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                 // print(count);
                  //count = count + 1;
                  //count += 1;
                });
              },
              child: Text(
                "Click",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
