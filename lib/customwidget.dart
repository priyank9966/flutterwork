import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class customScreen extends StatelessWidget {
  const customScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widgets"),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: Column(
            children: [

           CatItems(),
              CatItemtwo(),
              CatItemtthree(),

          Expanded(
            flex: 2,
            child: Container(
              color: Colors.brown,
              child: ListView.builder(
                itemBuilder: (context, index) => SizedBox(
                  width: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(



              color: Colors.deepPurple,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.orange,
                    ),
                    title: Text("mob no"),
                    subtitle: Text("8849455960"),
                    trailing: Icon(Icons.delete),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blueGrey,
              child: Container(
                color: Colors.black,
                child: ListView.builder(
                  itemBuilder: (context, index) => Container(
                    child: Text("Hello", style: TextStyle(fontSize: 20 , color: Colors.white10),),
                  ),
                  scrollDirection:  Axis.horizontal,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
                child: Container(
                  color: Colors.black,
                  child: ListView.builder(
                    itemBuilder: (context, index) => Container(
                      child: Text("Hello", style: TextStyle(fontSize: 20 , color: Colors.white10),),
                    ),
                    scrollDirection:  Axis.horizontal,
                  ),
                )

            ),
          ),
        ]),
      ),
    );
  }
}


class CatItems extends StatelessWidget {
  @override
  Widget build (BuildContext context){

    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.brown,
        child: ListView.builder(
          itemBuilder: (context, index) =>
              SizedBox(
                width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
              ),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class CatItemtwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Expanded(
      flex: 4,
      child: Container(

        color: Colors.deepPurple,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
              ),
              title: Text("mob no"),
              subtitle: Text("8849455960"),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}
class CatItemtthree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blueGrey,
        child: Container(
          color: Colors.black,
          child: ListView.builder(
            itemBuilder: (context, index) => Container(
              child: Text("Hello", style: TextStyle(fontSize: 20 , color: Colors.white10),),
            ),
            scrollDirection:  Axis.horizontal,
          ),
        ),
      ),
    );
  }

}
