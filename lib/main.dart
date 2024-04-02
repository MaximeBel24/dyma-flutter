import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
          border: Border.all(color: Colors.teal, width: 3.00, style: BorderStyle.solid),
          boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 15.0, blurRadius: 10.0)],
          // borderRadius: BorderRadius.circular(30)
          shape: BoxShape.circle
        ),
        width: 150.0,
        height: 200.0,
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.centerLeft,
        child: Text('hello world !' , textDirection: TextDirection.ltr,)
      )
    );
  }
}

