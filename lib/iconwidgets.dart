import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class iconwidgetsScreen extends StatefulWidget {
  const iconwidgetsScreen({super.key});

  @override
  State<iconwidgetsScreen> createState() => _iconwidgetsScreen();
}

class _iconwidgetsScreen extends State<iconwidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Widgets"),
        backgroundColor: Colors.yellow,
      ),
      body: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_balance_sharp,
                size: 100,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              FaIcon(
                FontAwesomeIcons.amazon,
                color: Colors.yellow,
                size: 100,
              ),
              SizedBox(
                width: 10,
              ),
              FaIcon(
                FontAwesomeIcons.arrowUp,
                color: Colors.green,
                size: 100,
              ),
              SizedBox(
                width: 10,
              ),
              FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
                size: 100,
              ),
              SizedBox(
                width: 10,
              ),
              FaIcon(
                FontAwesomeIcons.baby,
                color: Colors.green,
                size: 100,
              ),
              SizedBox(
                width: 10,
              ),
              FaIcon(
                FontAwesomeIcons.circle,
                color: Colors.green,
                size: 100,
              ),
              SizedBox(
                width: 10,
              ),
              FaIcon(
                //fontawesomeicons
                FontAwesomeIcons.googleDrive,
                color: Colors.yellow,
                size: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
