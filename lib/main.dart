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
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Text('Hello world', textDirection: TextDirection.ltr),
                Container(
                  color: Colors.red.withOpacity(0.2),
                  width: 300.00,
                  height: 100.00,
                ),                
              ],
            ),
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

