import 'package:flutter/material.dart';
import 'package:listview/passingscreen.dart';

class dashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _dashboardScreen();
  }
}

class _dashboardScreen extends State<dashboardScreen> {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Dashboard Screen"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dashboard Edit your data"),
              SizedBox(height: 20,),
              TextField(
                controller: nameController,
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return passdataScreen(passscreen: nameController.text.toString(),);
                      },
                    ),
                  );
                },
                child: Text(
                  'My Profile',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
