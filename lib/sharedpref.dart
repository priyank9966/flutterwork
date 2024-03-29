import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shrepref extends StatefulWidget {
  const Shrepref({super.key});

  @override
  State<Shrepref> createState() => _ShreprefState();
}

class _ShreprefState extends State<Shrepref> {
  var namecontroller = TextEditingController();

  static const String Keyname = "name";

  var namevalue = "No value set";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Shared preferences"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  label: Text("Name"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  var pref = await SharedPreferences.getInstance();

                  pref.setString(
                    Keyname,
                    namecontroller.text.toString(),
                  );
                },
                child: Text("Save"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("No value"),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getValue() async {

    var pref = await SharedPreferences.getInstance();

    var getname = pref.getString(Keyname);



    setState(() {
      namevalue = getname !=null ? getname  : "No value set";
    });
  }
}
