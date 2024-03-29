import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  @override
  State<AnimationScreen> createState() {
    // TODO: implement createState
    return _AnimationScreen();
  }
}

class _AnimationScreen extends State<AnimationScreen> {
  var _width = 200.0;
  var _height = 200.0;

  bool flag = true;

  Decoration mydecor = BoxDecoration(
    borderRadius: BorderRadius.circular(21),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: mydecor,
              curve: Curves.easeIn,
              child: Image.asset('assets/images/ab.png'),
              duration: Duration(seconds: 2),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 400.0;
                      _height = 200.0;
                      mydecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                      );
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 400.0;
                      mydecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(21));
                      flag = true;
                    }
                  });
                },
                child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}
//borderRadius: BorderRadius.only(
// topRight: Radius.circular(30),
//bottomLeft: Radius.circular(50),
//borderRadius: BorderRadius.circular(10),
