import 'package:flutter/material.dart';

class gridviewScreen extends StatefulWidget {
  const gridviewScreen({super.key});

  @override
  State<gridviewScreen> createState() => _gridviewScreenState();
}

class _gridviewScreenState extends State<gridviewScreen> {
  var arrColors = [
    Colors.grey,
    Colors.black,
    Colors.yellow,
    Colors.blueGrey,
    Colors.orange,
    Colors.deepOrange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal, title: Text("Grid view Example")),
        body: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              color: arrColors[index],
            );
          },
          itemCount: arrColors.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
          ),
        )

        // body: GridView.count(
        //   crossAxisCount: 2,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(color: arrColors[0]),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(color: arrColors[1]),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(color: arrColors[2]),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(color: arrColors[3]),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(color: arrColors[4]),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(color: arrColors[5]),
        //     ),
        //   ],
        // ),
        );
  }
}
