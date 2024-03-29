import 'package:flutter/material.dart';

class RangevalueScreen extends StatefulWidget {
  @override
  State<RangevalueScreen> createState() {
    // TODO: implement createState
    return _RangevalueScreen();
  }
}

class _RangevalueScreen extends State<RangevalueScreen> {

  RangeValues value = RangeValues(0, 100);

  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(value.start.toString(), value.end.toString());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Range slider'),
      ),
      body: Center(
        child: RangeSlider(values: value,
            min: 0,
            max: 100,
            divisions: 10,
            labels: labels,
            activeColor: Colors.yellow,
            onChanged: (newvalue){
          value = newvalue;
          print("${newvalue.start}, ${newvalue.end}");

          setState(() {

          });
            }
        ),
      ),
    );
  }
}
