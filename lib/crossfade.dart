import 'dart:async';

import 'package:flutter/material.dart';

class Crossfadeanim extends StatefulWidget {
  const Crossfadeanim({super.key});

  @override
  State<Crossfadeanim> createState() {
    // TODO: implement createState
    return _Crossfadeanim();
  }
}

class _Crossfadeanim extends State<Crossfadeanim> {
  bool isfirst = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), (){
      reload();
    });

  }


  void reload(){
    setState(() {
      isfirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("cross fade"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstCurve: Curves.bounceIn,
              duration: Duration(seconds: 2),
              firstChild: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              secondChild: Image.asset(
                "assets/images/ab.png",
                width: 200,
                height: 200,
              ),
              crossFadeState:
                   isfirst?  CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            ElevatedButton(onPressed: (){
              isfirst = false;
              setState(() {
                reload();
              });
            },
                child: Text("Boot"))
          ],
        ),

      ),
    );
  }
}
