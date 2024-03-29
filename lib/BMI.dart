import 'package:flutter/material.dart';

class bmical extends StatefulWidget {
  const bmical({super.key});

  @override
  State<bmical> createState() => _bmicalState();
}

class _bmicalState extends State<bmical> {
  var wtcontroller = TextEditingController();
  var ftcontroller = TextEditingController();
  var incontroller = TextEditingController();

  var result = "";

  var bgcolor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [Color(0xfffa709a),
              Color(0xfffee140)],
            )
          ),
            child: Text("BMI App")),
        //backgroundColor: Colors.yellow.shade300,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff43e97b) ,Color(0xff38f9d7),
              //0xff transfarancies mate use thay
              //webgradiennt no use karvo
            ],
           // begin: FractionalOffset(0.0, 0.3),
           begin: AlignmentDirectional.topEnd,
            end: AlignmentDirectional.bottomEnd,
            //end: Alignment.center,
            //stops: FractionalOffset[],


          )
        ),
        child: Center(
          child: Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BMI",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: wtcontroller,
                  decoration: InputDecoration(
                      label: Text("Enter your Weights"),
                      prefixIcon: Icon(Icons.add)),
                ),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: ftcontroller,
                  decoration: InputDecoration(
                    label: Text("Enter your Heights"),
                    prefixIcon: Icon(Icons.height),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: incontroller,
                  decoration: InputDecoration(
                      label: Text("Enter your fit"),
                      prefixIcon: Icon(Icons.sports_football)),
                ),
                SizedBox(
                  height: 11,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var wt = wtcontroller.text.toString();
                      var ft = ftcontroller.text.toString();
                      var inch = incontroller.text.toString();

                      if (wt != "" && ft != "" && inch != "") {
                        //bmi calculation

                        var iwt = int.parse(wt);
                        var ift = int.parse(ft);
                        var iinch = int.parse(inch);

                        var tinch = (ift * 12) + iinch;

                        var tcentimiter = tinch * 2.54;

                        var tmiter = tcentimiter / 100;

                        var bmi = iwt / (tmiter * tmiter);

                        var msg = "";

                        if (bmi > 25) {
                          msg = "You are overweight !!!";
                          bgcolor = Colors.orange;
                        } else if (bmi < 18) {
                          msg = "You are Underweight !!";
                          bgcolor = Colors.red;
                        } else {
                          msg = "You are healthy";
                          bgcolor = Colors.green;
                        }

                        result = " $msg \n Your BMI is : ${bmi.toStringAsFixed(2)}";
                      } else {
                        setState(() {
                          result = "Please fill all the field";
                        });
                      }
                    });
                  },
                  child: Text("Calculate"),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  result,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
