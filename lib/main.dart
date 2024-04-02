import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Container(
          color: Colors.blue,
          height: 150,
        ),
        Expanded(
          child: Container(
          color: Colors.red,
          height: 150,
          )
        ),
        Expanded(
          child: Container(
          color: Colors.green,
          height: 150,
          )
        ),
        Container(
          color: Colors.purple,
          height: 150,
        ),
      ],
    );
  }
}

