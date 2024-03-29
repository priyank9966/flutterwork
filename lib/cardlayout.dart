import 'package:flutter/material.dart';

class cardScreen extends StatefulWidget {
  const cardScreen({super.key});

  @override
  State<cardScreen> createState() => _cardScreenState();
}

class _cardScreenState extends State<cardScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Card(
          shadowColor: Colors.cyan,
            elevation: 20,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Helllo flutter master",
                style: TextStyle(fontSize: 25),
              ),
            )),
      ),
    );
  }
}
