
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class callbackactionScreen extends StatelessWidget {
  const callbackactionScreen({super.key});

  @override
  Widget build(BuildContext context) {

   callback(){
     print("clicked done!!!! ");
   }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Click me "),
          onPressed: callback,

        ),
      ),
    );
  }
}
