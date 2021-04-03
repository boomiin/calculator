import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var num1 = 0, num2 = 0, total = 0;
  final t1 = TextEditingController(text: "0");
  final t2 = TextEditingController(text: "0");

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      total = num1 + num2;
    });
  }

  void subtract() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      total = num1 - num2;
    });
  }

  void multiply() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    total = num1 * num2;
  }

  void divide() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    if (num2 != 0) {
      total = num1 ~/ num2;
    }
  }

  void reset() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My calculator")),
      body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              Container(
                child: Text("Result : ${total}"),
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
              ),
              Text("Number 1:"),
              Container(
                child: TextField(
                  controller: t1,
                  keyboardType: TextInputType.number,
                ),
                margin: EdgeInsets.all(8.0),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text("Number 2:"),
              Container(
                child: TextField(
                  controller: t2,
                  keyboardType: TextInputType.number,
                ),
                margin: EdgeInsets.all(8.0),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: add,
                      child: Text("+"),
                    ),
                    ElevatedButton(
                      onPressed: subtract,
                      child: Text("-"),
                    )
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: multiply,
                      child: Text("x"),
                    ),
                    ElevatedButton(
                      onPressed: divide,
                      child: Text("/"),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  MaterialButton(
                      color: Colors.red,
                      onPressed: reset,
                      child: Text(
                        "Reset",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              )
            ],
          )),
    );
  }
}
