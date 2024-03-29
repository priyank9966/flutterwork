import 'package:flutter/material.dart';

TextStyle mTextStyle(
    {Color textcolor = Colors.black,
    FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold, color: Colors.cyan);
}

TextStyle mTextStyle2() {
  return TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue);
}

TextStyle mTextStyle3() {
  return TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
}

TextStyle mTextStyle4() {
  return TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green);
}

TextStyle mTextStyle5() {
  return TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.yellowAccent);
}
