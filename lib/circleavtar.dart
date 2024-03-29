import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class circleavtar extends StatefulWidget {
  const circleavtar({super.key});

  @override
  State<circleavtar> createState() => _circleavtarState();
}

class _circleavtarState extends State<circleavtar> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('circle Screen'),),
      body:  Center(
        child: CircleAvatar(
          backgroundColor: Colors.black,
         radius: 70,
          child: Column(
            children: [
              Container(
                height: 100,
                  width: 100,
                  child: Image.asset('assets/images/user.png')),
              Text('Ram',style: TextStyle(fontSize: 20,color: Colors.yellowAccent),)
            ],
          ),


        ),
      ),
    );
  }
}
