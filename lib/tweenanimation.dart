import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tweenanimation extends StatefulWidget{
  const Tweenanimation ({super.key});

  @override
  State<Tweenanimation> createState() {
    // TODO: implement createState
    return _Tweenanimation();
  }
}

class _Tweenanimation extends State<Tweenanimation> with SingleTickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController controller;


  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.forward();
  }
   @override
  Widget build(BuildContext context){
     return Scaffold(
       backgroundColor: Colors.yellow,
       appBar: AppBar(
         backgroundColor: Colors.yellow,
         title: Text("Tween animation"),
       ),
       body: Center(
         child: Container(
           decoration: BoxDecoration(
             color: Colors.black,
             borderRadius: BorderRadius.circular(21)
           ),
           child: Center(child: Text("સીતારામ",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,),)),
           
           height: animation.value,
           width: animation.value,
         ),
       ),
     );
   }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
