import 'package:flutter/material.dart';
import 'package:listview/dashboardscreen.dart';

class passdataScreen extends StatefulWidget {
  String passscreen;

  passdataScreen({required this.passscreen, super.key});

  @override
  State<passdataScreen> createState() {
    return _passdataScreen();
  }
}

class _passdataScreen extends State<passdataScreen> {
  var nameFromdashboard;

  _passdataScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Pass data to another screeen"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome ${widget.passscreen}",
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return dashboardScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 30, color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
