import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listviewScreen extends StatefulWidget {
  const listviewScreen({super.key});

  @override
  State<listviewScreen> createState() => _listviewScreenState();
}

class _listviewScreenState extends State<listviewScreen> {

  var arrNames = [
    'Ram ram ram hare ram',
    'Krishna',
    'Hari',
    'Radha',
    'Hanuman',
    'Radhe -Radhe '
    'hare - krishna'
    'jay swaminarayan'
    'jay gurudev'
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // the App.build method, and use it to set our appbar title.
          title: Text('Hello'),
          backgroundColor: Colors.yellow,
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(

              leading: Text('${index+1}'), // number mate
              title: Text(arrNames[index]),//main name apva mate
              subtitle: Text('Numbers'),
              trailing: Icon(Icons.add),
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
