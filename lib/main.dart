import 'package:flutter/material.dart';
import './screens/calculator_screen.dart';

void main(){
  runApp(MyCalco());
}

class MyCalco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Calculator",
      home: Home(),
    );
  }
}


