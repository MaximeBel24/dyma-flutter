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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              textDirection: TextDirection.ltr,
              children: <Widget>[
                Container(
                  height: 50.00,
                  width: 50.00,
                  color: Colors.teal[200]
                ),
                Expanded(
                  child: Container(
                    height: 50.00,
                    width: 50.00,
                    color: Colors.teal[300]
                  ),
                ),
                Container(
                  height: 50.00,
                  width: 50.00,
                  color: Colors.teal[400]
                ),
              ],
            )
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

