import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lstwithtextScreen extends StatefulWidget {
  const lstwithtextScreen({super.key});

  @override
  State<lstwithtextScreen> createState() => _lstwithtextScreenState();
}

class _lstwithtextScreenState extends State<lstwithtextScreen> {

  var arrNames = ['Rammmmmmmmmm', 'Krishna', 'Hari', 'Radha', 'Hanuman', 'Radhe - Radhe  '];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          // the App.build method, and use it to set our appbar title.
          title: Text('Hello'),
          backgroundColor: Colors.yellow,
        ),
        backgroundColor: Colors.lightBlueAccent,


        body: ListView.separated(
          itemBuilder: (context, index) {
            ListTile(
              leading: Text('{$index+1}'),
              title: Text(arrNames[index]),
              subtitle: Text('Numbers') ,
              trailing: Icon(Icons.add),
            );
            return
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            arrNames[index],
                            style: TextStyle(
                                fontSize: 20 , fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        arrNames[index],
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        arrNames[index],
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        arrNames[index],
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),

                  ],
                ),
              );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 100,
              thickness: 2,
            );
          },
          // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
