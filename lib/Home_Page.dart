import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 ~/ num2);
    });
  }

  void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Simple Calculator"),
      ),
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output: $sum",
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
              ),
            ),
            new TextField(
              keyboardType: new TextInputType.numberWithOptions(),
              decoration: new InputDecoration(hintText: "Enter First Number"),
              controller: t1,
            ),
            new TextField(
              keyboardType: new TextInputType.numberWithOptions(),
              decoration: new InputDecoration(hintText: "Enter Second Number"),
              controller: t2,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.blueGrey,
                  splashColor: Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: add,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.blueGrey,
                  splashColor: Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: sub,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.blueGrey,
                  splashColor: Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: mul,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.blueGrey,
                  splashColor: Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: div,
                ),
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("clear"),
                  color: Colors.blueGrey,
                  splashColor: Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: clear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
