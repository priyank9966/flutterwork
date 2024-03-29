

import 'package:flutter/material.dart';

class AnimaopacityScreen extends StatefulWidget {
  const AnimaopacityScreen({super.key});

  @override
  State<AnimaopacityScreen> createState() {
    // TODO: implement createState
    return _AnimaopacityScreen();
  }
}

class _AnimaopacityScreen extends State<AnimaopacityScreen> {
  @override
  Widget build(BuildContext context) {

    var myopecity  = 1.0;
    bool isVisible = true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation opacity"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myopecity,
              duration: Duration(seconds: 1),
              curve: Curves.elasticIn,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: () {

                setState(() {
                  if(isVisible){
                    myopecity = 0.0;
                    isVisible =false;
                  }else {
                    myopecity = 1.0;
                    isVisible = true;
                  }
                });
              },
              child: Text("Close"),
            ),
          ],
        ),
      ),
    );
  }
}
