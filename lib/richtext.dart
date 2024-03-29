import 'package:flutter/material.dart';

class richtextScreen extends StatefulWidget {
  const richtextScreen({super.key});

  @override
  State<richtextScreen> createState() => _richtextScreen();
}

class _richtextScreen extends State<richtextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich text"),
      ),
      body: Center(
        child: RichText(
          text: const TextSpan(
            style:  TextStyle(color: Colors.green, fontSize: 30),//it is defualt

            children: [
              TextSpan(
                text: "Hello",
              ),
              TextSpan(
                  text: "World",
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "Welcome to "),
              TextSpan(
                text: "Flutter",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.orange,
                    fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text: "Thank you for the visiting",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontFamily: 'fontmain',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
