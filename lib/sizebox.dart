import 'package:flutter/material.dart';

class sizeboxwidgetScreen extends StatefulWidget {
  const sizeboxwidgetScreen({super.key});

  @override
  State<sizeboxwidgetScreen> createState() => _sizeboxwidgetScreen();
}

class _sizeboxwidgetScreen extends State<sizeboxwidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Size box"),
      ),
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: [
            
            SizedBox.square(
              dimension: 100,
              // height: 50,
              //width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Click"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox.square(
              dimension: 100,
              // height: 50,
              //width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Click"),
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            SizedBox.square(
              dimension: 100,
              // height: 50,
              //width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Click"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
