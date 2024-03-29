import 'package:flutter/material.dart';

class calsiScreen extends StatefulWidget {
  const calsiScreen({super.key});

  @override
  State<calsiScreen> createState() => _calsiScreen();
}

class _calsiScreen extends State<calsiScreen> {

  var no1controller = TextEditingController();
  var no2controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic calculation"),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        color: Colors.cyan.shade500,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var no1 =
                                  int.parse(no1controller.text.toString());
                              var no2 =
                                  int.parse(no2controller.text.toString());

                              var sum = no1 + no2;

                              result = "The sum of $no1 and $no2 is $sum";
                            });
                          },
                          child: Text("Add")),
                      ElevatedButton(onPressed: () {
                         setState(() {
                           var no1 =
                               int.parse(no1controller.text.toString());
                           var no2 =
                               int.parse(no2controller.text.toString());

                           var sub = no1 - no2;

                           result = "The substration of $no1 and $no2 is $sub";
                         });
                      }, child: Text("Sub")),
                      ElevatedButton(onPressed: () {
                        setState(() {

                          var no1 =
                              int.parse(no1controller.text.toString());
                          var no2 =
                              int.parse(no2controller.text.toString());

                          var mul = no1 * no2;

                          result = "The multiplication of $no1 and $no2 is ${mul.toStringAsFixed(2)}";

                        });
                      }, child: Text("Mult")),
                      ElevatedButton(onPressed: () {
                        setState(() {

                          var no1 =
                              int.parse(no1controller.text.toString());
                          var no2 =
                              int.parse(no2controller.text.toString());

                          var div = no1 / no2;

                          result = "The div of $no1 and $no2 is ${div.toStringAsFixed(2)}";
                        });
                      }, child: Text("Div")),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(21.0),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 22, color: Colors.brown),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
